const url = 'http://localhost:3000/api/products';

function getProducts() {
    fetch(url)
        .then(response => response.json())
        .then(data => {
            console.log(data); 
            displayProductsByLicence(data);
        })
        .catch(error => {
            console.error("Erreur lors de la récupération des produits :", error);
        });
}

document.addEventListener('DOMContentLoaded', getProducts);

function displayProductsByLicence(products) {
    const productsByLicence = {};

    products.forEach(product => {
        if (!productsByLicence[product.licence_name]) {
            productsByLicence[product.licence_name] = [];
        }
        productsByLicence[product.licence_name].push(product);
    });


    Object.keys(productsByLicence).forEach(licence => {
        const productsList = document.querySelector('.articles');
        
        const sortieTitle = document.createElement('p');
        sortieTitle.classList.add('titre1');
        sortieTitle.textContent = 'Sorties';
        productsList.appendChild(sortieTitle);


        const categoryTitle = document.createElement('h2');
        categoryTitle.classList.add('titre2');
        categoryTitle.textContent = licence;
        productsList.appendChild(categoryTitle);

        const categoryContainer = document.createElement('div');
        categoryContainer.classList.add('category_ctn');

        const licenceProducts = productsByLicence[licence].slice(0, 10);

        licenceProducts.forEach(product => {
            const productElement = document.createElement('div');
            productElement.classList.add('article');
            productElement.setAttribute('data-product-id', product.products_id);
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
                <p class="prix">Prix: ${product.price.toFixed(2)}<span>€</span></p>
            `;
            categoryContainer.appendChild(productElement);
        });

        productsList.appendChild(categoryContainer);
    });

    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        emptyHeart.addEventListener('click', function(event) {
            event.preventDefault();
            const isHeartEmpty = this.src.includes('empty-heart');
            if (isHeartEmpty) {
                this.src = 'assets/img/heart/filled-heart.png';
                const productId = this.closest('.article').getAttribute('data-product-id');
                storeProductInLocalStorage(productId);
            } else {
                this.src = 'assets/img/heart/empty-heart.png';
                const productId = this.closest('.article').getAttribute('data-product-id');
                removeProductFromLocalStorage(productId);
            }
        });
    });

    updateFavoritedProductsDisplay();
}

function storeProductInLocalStorage(productId) {
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    storedProducts.push(productId);
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function removeProductFromLocalStorage(productId) {
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    storedProducts = storedProducts.filter(id => id !== productId);
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function updateFavoritedProductsDisplay() {
    const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        const productId = emptyHeart.closest('.article').getAttribute('data-product-id');
        if (storedProducts.includes(productId)) {
            emptyHeart.src = 'assets/img/heart/filled-heart.png';
        }
    });
}
