const url = 'http://localhost:3000/api/products';

let currentPage = 1;
const productsPerPage = 9;
let allProductsData = [];

document.addEventListener('DOMContentLoaded', () => {
    let activeFilters = [];
    let selectedLanguage = '';
    let selectedEdition = '';
    let favorites = JSON.parse(localStorage.getItem('favorites')) || []; 

    function getProducts() {
        fetch(url)
            .then(response => response.json())
            .then(data => {
                allProductsData = data;
                applyFiltersAndSort(); 
                displayPagination();
                console.log(data);
            })
            .catch(error => {
                console.error("Erreur lors de la récupération des produits :", error);
            });
    }

    document.getElementById('sort-select').addEventListener('change', () => {
        applyFiltersAndSort();
    });

    document.querySelectorAll('.tri_sub_ctn').forEach(filterDiv => {
        filterDiv.addEventListener('click', (event) => {
            const filterId = event.currentTarget.id;
            toggleFilter(filterId);
            applyFiltersAndSort();
            updateCheckbox(filterDiv);
        });
    });

    document.getElementById('language-select').addEventListener('change', (event) => {
        selectedLanguage = event.target.value;
        applyFiltersAndSort();
    });

    document.getElementById('edition-select').addEventListener('change', (event) => {
        selectedEdition = event.target.value;
        applyFiltersAndSort();
    });

    document.getElementById('clear_filter').addEventListener('click', () => {
        clearFilters();
        applyFiltersAndSort();
    });

    function toggleFilter(filterId) {
        const index = activeFilters.indexOf(filterId);
        if (index > -1) {
            activeFilters.splice(index, 1);
        } else {
            activeFilters.push(filterId);
        }
    }

    function updateCheckbox(filterDiv) {
        const isSelected = filterDiv.getAttribute('data-selected') === 'true';
        filterDiv.setAttribute('data-selected', !isSelected);
    }

    function applyFiltersAndSort() {
        let filteredProducts = filterProducts(allProductsData, activeFilters, selectedLanguage, selectedEdition);
        filteredProducts = sortProducts(filteredProducts, document.getElementById('sort-select').value);
        displayAllProducts(filteredProducts);
    }

    function sortProducts(products, direction) {
        if (direction === 'asc') {
            return products.slice().sort((a, b) => a.price - b.price);
        } else if (direction === 'desc') {
            return products.slice().sort((a, b) => b.price - a.price);
        }
        return products;
    }

    function filterProducts(products, filters, language, editions) {
        return products.filter(product => {
            const category = product.category_name;
            const licence = product.licence_name;
            const lang = product.langage_name;
            const edition = product.edition_name;

            let matches = filters.length === 0;
            if (filters.includes('filter-booster-pokemon')) {
                matches = matches || (category === 'Booster' && licence === 'Pokémon');
            }
            if (filters.includes('filter-carte-pokemon')) {
                matches = matches || (category === 'Cartes' && licence === 'Pokémon');
            }
            if (filters.includes('filter-coffret-pokemon')) {
                matches = matches || (category === 'Coffret' && licence === 'Pokémon');
            }
            if (filters.includes('filter-tin-box-pokemon')) {
                matches = matches || (category === 'Tin-box' && licence === 'Pokémon');
            }
            if (filters.includes('filter-blister-pokemon')) {
                matches = matches || (category === 'Blister' && licence === 'Pokémon');
            }
            if (filters.includes('filter-accessoires-pokemon')) {
                matches = matches || (category === 'Accessoires' && licence === 'Pokémon');
            }
            if (filters.includes('filter-pokemon')) {
                matches = matches || (licence === 'Pokémon');
            }
            if (filters.includes('filter-ygo')) {
                matches = matches || (licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-booster-ygo')) {
                matches = matches || (category === 'Booster' && licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-carte-ygo')) {
                matches = matches || (category === 'Cartes' && licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-coffret-ygo')) {
                matches = matches || (category === 'Coffret' && licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-tin-box-ygo')) {
                matches = matches || (category === 'Tin-box' && licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-blister-ygo')) {
                matches = matches || (category === 'Blister' && licence === 'Yu-Gi-Oh!');
            }
            if (filters.includes('filter-accessoires-ygo')) {
                matches = matches || (category === 'Accessoires' && licence === 'Yu-Gi-Oh!');
            }

            if (language) {
                matches = matches && (lang === language);
            }

            if (editions) {
                matches = matches && (edition === editions);
            }

            return matches;
        });
    }

    function clearFilters() {
        activeFilters = [];
        selectedLanguage = '';
        selectedEdition = '';

        document.querySelectorAll('.tri_sub_ctn').forEach(filterDiv => {
            filterDiv.setAttribute('data-selected', 'false');
        });

        document.getElementById('language-select').value = '';
        document.getElementById('edition-select').value = '';
    }

    function toggleFavorite(productId) {
        const index = favorites.indexOf(productId);
        if (index > -1) {
            favorites.splice(index, 1);
        } else {
            favorites.push(productId);
        }
        localStorage.setItem('storedProducts', JSON.stringify(favorites));
    }

    function isFavorite(productId) {
        return favorites.includes(productId);
    }

    function displayAllProducts(products) {
        const productsList = document.querySelector('.articles');
        productsList.innerHTML = '';

        const startIndex = (currentPage - 1) * productsPerPage;
    const endIndex = startIndex + productsPerPage;
    const displayedProducts = products.slice(startIndex, endIndex);

        const allProductsContainer = document.createElement('div');
        allProductsContainer.classList.add('category_ctn');

        displayedProducts.forEach(product => {
            const productElement = document.createElement('div');
            productElement.classList.add('article');
            productElement.setAttribute('data-product-id', product.products_id);
            let price = product.price;
            let priceWithReduction = product.price;
            let priceClass = 'prix-initial';
            if (product.réduction !== 0) {
                priceWithReduction = product.price - (product.price * (product.réduction / 100));
                priceClass = 'prix-initial-promo';
            }
            const isFav = isFavorite(product.products_id) ? 'filled-heart' : 'empty-heart';

            productElement.innerHTML = `
            <div class="coeur_ctn">
               <img class="coeur empty-heart" src="assets/img/heart/empty-heart.png" alt="coeur vide" data-id="${product.products_id}">
            </div>
                <p class="licence">${product.licence_name}</p>
                <p class="cat">${product.category_name}</p>
                <a href="article.html?id=${product.products_id}">
                    <img class="article_img" src="${product.image_url}" alt="${product.name}">
                </a>
                <h2 class="product_name">${product.name}</h2>
                <p class="prix">
                    <span class="${priceClass}">${price.toFixed(2)}<span>€</span></span>
                    ${product.réduction !== 0 ? `<span class="prix-réduit">${priceWithReduction.toFixed(2)}<span>€</span></span>` : ''}
                </p>
            `;

            allProductsContainer.appendChild(productElement);
        });

        productsList.appendChild(allProductsContainer);

        document.querySelectorAll('.coeur').forEach(heart => {
            heart.addEventListener('click', (event) => {
                const productId = event.target.getAttribute('data-id');
                toggleFavorite(productId);
                event.target.classList.toggle('filled-heart');
                event.target.classList.toggle('empty-heart');
                event.target.src = `assets/img/heart/${event.target.classList.contains('filled-heart') ? 'filled-heart' : 'empty-heart'}.png`;
            });
        });

        updateFavoritedProductsDisplay();
    }

    function updateFavoritedProductsDisplay() {
        const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
        document.querySelectorAll('.coeur').forEach(heart => {
            const productId = heart.getAttribute('data-id');
            if (storedProducts.includes(productId)) {
                heart.src = 'assets/img/heart/filled-heart.png';
                heart.classList.add('filled-heart');
                heart.classList.remove('empty-heart');
            }
        });
    }

    function displayPagination() {
        const totalPages = Math.ceil(allProductsData.length / productsPerPage);
        const paginationContainer = document.querySelector('.pagination');
    
        paginationContainer.innerHTML = '';
    
        for (let i = 1; i <= totalPages; i++) {
            const pageButton = document.createElement('button');
            pageButton.textContent = i;
            pageButton.classList.add('page-button');
            if (i === currentPage) {
                pageButton.classList.add('active');
            }
            pageButton.addEventListener('click', () => {
                currentPage = i;
                applyFiltersAndSort();
                // Supprimer la classe active de tous les boutons de pagination
                document.querySelectorAll('.page-button').forEach(button => {
                    button.classList.remove('active');
                });
                // Ajouter la classe active au bouton cliqué
                pageButton.classList.add('active');
            });
            paginationContainer.appendChild(pageButton);
        }
    }
    

    getProducts();
    displayPagination();

});

