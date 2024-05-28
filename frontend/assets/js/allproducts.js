const url = 'http://localhost:3000/api/products';

document.addEventListener('DOMContentLoaded', () => {
    let allProductsData = [];
    let activeFilters = [];
    let selectedLanguage = '';

    function getProducts() {
        fetch(url)
            .then(response => response.json())
            .then(data => {
                allProductsData = data;
                displayAllProducts(allProductsData);
                console.log(data)
            })
            .catch(error => {
                console.error("Erreur lors de la récupération des produits :", error);
            });
    }

    // Event listener for sorting
    document.getElementById('sort-select').addEventListener('change', (event) => {
        const sortDirection = event.target.value;
        applyFiltersAndSort(sortDirection);
    });

    // Event listeners for filters
    document.querySelectorAll('.tri_sub_ctn').forEach(filterDiv => {
        filterDiv.addEventListener('click', (event) => {
            const filterId = event.currentTarget.id;
            toggleFilter(filterId);
            applyFiltersAndSort(document.getElementById('sort-select').value);
            updateCheckbox(filterDiv);
        });
    });

    // Event listener for language select
    document.getElementById('language-select').addEventListener('change', (event) => {
        selectedLanguage = event.target.value;
        applyFiltersAndSort(document.getElementById('sort-select').value);
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

    function applyFiltersAndSort(sortDirection) {
        let filteredProducts = filterProducts(allProductsData, activeFilters, selectedLanguage);
        filteredProducts = sortProducts(filteredProducts, sortDirection);
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

    function filterProducts(products, filters, language) {
        return products.filter(product => {
            const category = product.category_name;
            const licence = product.licence_name;
            const lang = product.langage_name;

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
            if (filters.includes('filter-pokemon')) {
                matches = matches || (licence === 'Pokémon');
            }
            if (filters.includes('filter-ygo')) {
                matches = matches || (licence === 'Yu-Gi-Oh!');
            }
            
            if (language) {
                matches = matches && (lang === language);
            }

            console.log(`Product: ${product.name}`);
            console.log(`Category: ${category}`);
            console.log(`Licence: ${licence}`);
            console.log(`Language: ${lang}`);
            console.log(`Filters: ${filters}`);
            console.log(`Matches: ${matches}`);

            return matches;
        });
    }

    function displayAllProducts(products) {
        const productsList = document.querySelector('.articles');
        productsList.innerHTML = '';

        const allProductsContainer = document.createElement('div');
        allProductsContainer.classList.add('category_ctn');

        products.forEach(product => {
            const productElement = document.createElement('div');
            productElement.classList.add('article');
            productElement.innerHTML = `
                <div class="coeur_ctn">
                    <img class="coeur empty-heart" src="assets/img/heart/empty-heart.png" alt="coeur vide">
                </div>
                <p class="licence">${product.licence_name}</p>
                <p class="cat">${product.category_name}</p>
                <a href="article.html?id=${product.products_id}">
                    <img class="article_img" src="${product.image_url}" alt="${product.name}">
                </a>
                <h2 class="product_name">${product.name}</h2>
                <p class="prix">Prix: ${product.price}<span>€</span></p>
            `;
            allProductsContainer.appendChild(productElement);
        });

        productsList.appendChild(allProductsContainer);
    }

    getProducts();
});
