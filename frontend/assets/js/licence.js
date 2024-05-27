document.addEventListener('DOMContentLoaded', function () {
    // Récupérer l'identifiant de la licence à partir de l'URL
    const urlParams = new URLSearchParams(window.location.search);
    const licenceId = urlParams.get('licence');

    // Effectuer une requête HTTP GET pour récupérer les produits correspondants à la licence
    fetch(`http://localhost:3000/api/products/licence/${licenceId}`)
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.json();
        })
        .then(products => {
            console.log(products);
            displayProducts(products);
            updateFavoritedProductsDisplay(); // Mettre à jour les cœurs des produits déjà favorisés
        })
        .catch(error => {
            console.error('There was a problem with the fetch operation:', error);
        });
});


function displayProducts(products) {
    const productsList = document.querySelector('.articles');

    products.forEach(product => {
        const productElement = document.createElement('div');
        productElement.classList.add('article');
        productElement.setAttribute('data-product-id', product.products_id); // Ajout de l'attribut data-product-id
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
        productsList.appendChild(productElement);
    });

    // Ajout de la gestion des clics sur l'image du cœur vide
    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        emptyHeart.addEventListener('click', function(event) {
            event.preventDefault();
            // Vérifier si l'image est vide ou pleine
            const isHeartEmpty = this.src.includes('empty-heart');
            // Basculer entre le cœur vide et le cœur plein
            if (isHeartEmpty) {
                this.src = 'assets/img/heart/filled-heart.png';
                // Récupérer l'identifiant du produit
                const productId = this.closest('.article').getAttribute('data-product-id');
                // Stocker l'identifiant du produit dans le stockage local
                storeProductInLocalStorage(productId);
            } else {
                this.src = 'assets/img/heart/empty-heart.png';
                // Récupérer l'identifiant du produit
                const productId = this.closest('.article').getAttribute('data-product-id');
                // Retirer l'identifiant du produit du stockage local
                removeProductFromLocalStorage(productId);
            }
        });
    });
}

function storeProductInLocalStorage(productId) {
    // Récupérer les produits stockés précédemment (s'ils existent)
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    // Ajouter le nouvel ID de produit à la liste
    storedProducts.push(productId);
    // Mettre à jour le stockage local avec la nouvelle liste
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function removeProductFromLocalStorage(productId) {
    // Récupérer les produits stockés
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    // Retirer l'identifiant du produit de la liste
    storedProducts = storedProducts.filter(id => id !== productId);
    // Mettre à jour le stockage local avec la nouvelle liste
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function updateFavoritedProductsDisplay() {
    // Récupérer les produits favorisés stockés dans le local storage
    const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    // Parcourir tous les produits et remplir le cœur s'ils sont favorisés
    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        const productId = emptyHeart.closest('.article').getAttribute('data-product-id');
        if (storedProducts.includes(productId)) {
            emptyHeart.src = 'assets/img/heart/filled-heart.png';
        }
    });
}
