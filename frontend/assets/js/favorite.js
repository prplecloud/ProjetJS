document.addEventListener('DOMContentLoaded', function() {
    displayFavoriteProducts();
});

function displayFavoriteProducts() {
    const favorisList = document.querySelector('.articles');
    favorisList.innerHTML = ''; // Nettoyer la liste avant d'afficher les favoris

    // Récupérer les identifiants des produits favoris depuis le stockage local
    const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];

    if (storedProducts.length === 0) {
        favorisList.innerHTML = '<p>Aucun produit favori trouvé.</p>';
        return;
    }

    // Faire une requête pour obtenir les détails des produits favoris depuis votre API
    storedProducts.forEach(productId => {
        fetch(`http://localhost:3000/api/products/${productId}`)
            .then(response => response.json())
            .then(product => {
                const productElement = createProductElement(product);
                favorisList.appendChild(productElement);

                // Ajouter l'événement de suppression du produit favori
                const poubelle = productElement.querySelector('.poubelle');
                poubelle.addEventListener('click', function(event) {
                    event.preventDefault();
                    // Récupérer l'identifiant du produit
                    const productId = this.closest('.article').getAttribute('data-product-id');
                    // Retirer l'identifiant du produit du stockage local
                    removeProductFromLocalStorage(productId);
                    // Retirer l'élément de la liste des favoris
                    favorisList.removeChild(this.closest('.article'));
                });
            })
            .catch(error => {
                console.error("Erreur lors de la récupération du produit favori :", error);
            });
    });
}

function removeProductFromLocalStorage(productId) {
    // Récupérer les produits stockés dans le local storage
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];

    // Filtrer les produits pour retirer celui avec l'ID spécifié
    storedProducts = storedProducts.filter(id => id !== productId);

    // Mettre à jour le stockage local avec la nouvelle liste de produits
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function createProductElement(product) {
    const productElement = document.createElement('div');
    productElement.classList.add('article');
    productElement.setAttribute('data-product-id', product.products_id);
    productElement.innerHTML = `
    <div class="poubelle_ctn">
    <img class="poubelle empty-heart" src="assets/img/poubelle/trash-1.png" alt="poubelle">
    </div>  
    <p class="licence">${product.licence_name}</p>
    <p class="cat">${product.category_name}</p>
    <a href="article.html?id=${product.products_id}">
        <img class="article_img" src="${product.image_url}" alt="${product.name}">
    </a>
    <h2 class="product_name">${product.name}</h2>
    <p class="prix">Prix: ${product.price}<span>€</span></p>
`;
    return productElement;
}
