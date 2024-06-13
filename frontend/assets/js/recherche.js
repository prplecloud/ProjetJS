document.addEventListener('DOMContentLoaded', function () {
    const urlParams = new URLSearchParams(window.location.search);
    const name = urlParams.get('name');

    if (name) {
        const searchName = name.toLowerCase();

        fetch(`http://localhost:3000/api/products/search/${searchName}`)
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.json();
            })
            .then(products => {
                displayProducts(products);
                updateHeart();
            })
            .catch(error => {
                console.error('There was a problem with the fetch operation:', error);
            });
    }
});

function displayProducts(products) {
    const articlesContainer = document.querySelector('.articles');

    articlesContainer.innerHTML = '';

    products.forEach(product => {
        const productElement = document.createElement('div');
        productElement.classList.add('article');
        productElement.setAttribute('data-product-id', product.products_id);
        productElement.innerHTML = `
            <div class="coeur_ctn">
                <img class="coeur empty-heart" src="assets/img/heart/empty-heart.png" alt="coeur vide">
            </div>
            <p class="licence">${product.licence_name}</p>
            <p class="cat">${product.categories_name}</p>
            <a href="article.html?id=${product.products_id}">
                <img class="article_img" src="${product.image_url}" alt="${product.name}">
            </a>
            <h2 class="product_name">${product.name}</h2>
            <p class="prix">${product.price.toFixed(2)}<span>€</span></p>
        `;
        articlesContainer.appendChild(productElement);
    });

    articlesContainer.style.display = 'flex';
    articlesContainer.style.flexDirection = 'row';

    heartImgUpdate();
}

function heartImgUpdate() {
    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        emptyHeart.addEventListener('click', function(event) {
            event.preventDefault();
            const isHeartEmpty = this.src.includes('empty-heart');
            const productId = this.closest('.article').getAttribute('data-product-id');

            if (isHeartEmpty) {
                this.src = 'assets/img/heart/filled-heart.png';
                storeInLocalStorage(productId);
            } else {
                this.src = 'assets/img/heart/empty-heart.png';
                removeFromLocalStorage(productId);
            }
        });
    });
}


function storeInLocalStorage(productId) {
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    if (!storedProducts.includes(productId)) {
        storedProducts.push(productId);
        localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
    }
}

function removeFromLocalStorage(productId) {
    let storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    storedProducts = storedProducts.filter(id => id !== productId);
    localStorage.setItem('storedProducts', JSON.stringify(storedProducts));
}

function updateHeart() {
    const storedProducts = JSON.parse(localStorage.getItem('storedProducts')) || [];
    document.querySelectorAll('.empty-heart').forEach(emptyHeart => {
        const productId = emptyHeart.closest('.article').getAttribute('data-product-id');
        if (storedProducts.includes(productId)) {
            emptyHeart.src = 'assets/img/heart/filled-heart.png';
        }
    });
}
