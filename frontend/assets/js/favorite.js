document.addEventListener('DOMContentLoaded', function() {
    displayFavoriteProducts();
});
const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];

function displayFavoriteProducts() {
    const favorisList = document.querySelector('.articles');
    favorisList.innerHTML = ''; 


    if (storedProducts.length === 0) {
        favorisList.innerHTML = '<p>Aucun produit favori trouvé.</p>';
        return;
    }

    storedProducts.forEach(productId => {
        fetch(`http://localhost:3000/api/products/${productId}`)
            .then(response => response.json())
            .then(product => {
                const productElement = createProductElement(product);
                favorisList.appendChild(productElement);

                const poubelle = productElement.querySelector('.poubelle');
                poubelle.addEventListener('click', function(event) {
                    event.preventDefault();
                    const productId = this.closest('.article').getAttribute('data-product-id');
                    removeProductFromLocalStorage(productId);
                    favorisList.removeChild(this.closest('.article'));
                });
            })
            .catch(error => {
                console.error("Erreur lors de la récupération du produit favori :", error);
            });
    });
}

function removeProductFromLocalStorage(productId) {
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];

    storedProducts = storedProducts.filter(id => id !== productId);

    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));

    if (storedProducts.length === 0) {
        favorisList.innerHTML = '<p>Aucun produit favori trouvé.</p>';
        return;
    }

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
    <p class="prix">Prix: ${product.price.toFixed(2)}<span>€</span></p>
`;

    return productElement;
    
}
