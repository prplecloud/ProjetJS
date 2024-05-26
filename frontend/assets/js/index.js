const url = 'http://localhost:3000/api/products';

function getProducts() {
    fetch(url)
        .then(response => response.json())
        .then(data => {
            console.log(data); 
            displayProductsByLicence(data); // Afficher les produits par licence
        })
        .catch(error => {
            console.error("Erreur lors de la récupération des produits :", error);
        });
}

document.addEventListener('DOMContentLoaded', getProducts);

function displayProductsByLicence(products) {
    // Organiser les produits par licence
    const productsByLicence = {};

    products.forEach(product => {
        if (!productsByLicence[product.licence_name]) {
            productsByLicence[product.licence_name] = [];
        }
        productsByLicence[product.licence_name].push(product);
    });


    Object.keys(productsByLicence).forEach(licence => {
        const productsList = document.querySelector('.articles');
        
        // Ajouter le titre "Sortie" avant le titre de la catégorie
        const sortieTitle = document.createElement('p');
        sortieTitle.classList.add('titre1');
        sortieTitle.textContent = 'Sorties';
        productsList.appendChild(sortieTitle);


        // Ajouter le titre de la catégorie
        const categoryTitle = document.createElement('h2');
        categoryTitle.classList.add('titre2');
        categoryTitle.textContent = licence;
        productsList.appendChild(categoryTitle);

        // Créer un conteneur pour chaque catégorie
        const categoryContainer = document.createElement('div');
        categoryContainer.classList.add('category_ctn');

        const licenceProducts = productsByLicence[licence].slice(0, 10); // Sélectionner les 10 premiers produits

        licenceProducts.forEach(product => {
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
            categoryContainer.appendChild(productElement);
        });

        // Ajouter le conteneur de catégorie à la liste des produits
        productsList.appendChild(categoryContainer);
    });
}
