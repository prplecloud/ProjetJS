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
    const productsWithReduction = products.filter(product => product.réduction !== 0);

    const productsList = document.querySelector('.articles');
    productsList.innerHTML = '';

    const categoryContainer = document.createElement('div');
    categoryContainer.classList.add('category_ctn');

    productsWithReduction.forEach(product => {
        const productElement = document.createElement('div');
        productElement.classList.add('article');
        productElement.setAttribute('data-product-id', product.products_id);

        let price = product.price;
        let priceWithReduction = product.price;
        let priceClass = 'prix-initial'; // Par défaut, la classe CSS est pour les prix initiaux sans promotion
        if (product.réduction !== 0) {
            priceWithReduction = product.price - (product.price * (product.réduction / 100));
            priceClass = 'prix-initial-promo'; // Si le produit a une promotion, utiliser la classe CSS pour les prix initiaux avec promotion
        }

        const isFav = isFavorite(product.products_id) ? 'filled-heart' : 'empty-heart';

        productElement.innerHTML = `
        <div class="coeur_ctn">
            <img class="coeur ${isFav}" src="assets/img/heart/${isFav}.png" alt="coeur vide" data-id="${product.products_id}">
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
        categoryContainer.appendChild(productElement);
    });

    productsList.appendChild(categoryContainer);

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

function isFavorite(productId) {
    const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    return storedProducts.includes(productId);
}