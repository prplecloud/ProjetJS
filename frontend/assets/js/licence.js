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
           
        })
        .catch(error => {
            console.error('There was a problem with the fetch operation:', error);
        });
});


function displayProducts(products) {
    const productsList = document.querySelector('.articles');

    products.forEach(product => {
        const productElement = document.createElement('div');
        productElement.classList.add('article')
        productElement.innerHTML = `
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
}