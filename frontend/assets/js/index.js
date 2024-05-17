
        const url = 'http://localhost:3000/api/products';

        // Fonction pour afficher les produits dans le frontend
        function displayProducts(products) {
            const productsList = document.querySelector('.articles');

            products.forEach(product => {
                const productElement = document.createElement('div');
                productElement.classList.add('article')
                productElement.innerHTML = `
                    <p>${product.category_name}</p>
                    <h2>${product.name}</h2>
                    <p>Prix: ${product.price}</p>
                `;
                productsList.appendChild(productElement);
            });
        }

    
        function getProducts() {
            fetch(url)
                .then(response => response.json())
                .then(data => {
                    console.log(data); 
                    displayProducts(data); 
                })
                .catch(error => {
                    console.error("Erreur lors de la récupération des produits :", error);
                });
        }

        document.addEventListener('DOMContentLoaded', getProducts);