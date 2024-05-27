const url = 'http://localhost:3000/api/products';

function getProducts() {
    fetch(url)
        .then(response => response.json())
        .then(data => {
            console.log(data); 
            displayAllProducts(data);
        })
        .catch(error => {
            console.error("Erreur lors de la récupération des produits :", error);
        });
}

document.addEventListener('DOMContentLoaded', getProducts);

function displayAllProducts(products) {
    const productsList = document.querySelector('.articles');


    // Créer un conteneur pour tous les produits
    const allProductsContainer = document.createElement('div');
    allProductsContainer.classList.add('category_ctn');

    products.forEach(product => {
        const productElement = document.createElement('div');
        productElement.classList.add('article');
        productElement.innerHTML = `
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
