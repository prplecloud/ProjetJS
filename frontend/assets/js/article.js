document.addEventListener('DOMContentLoaded', function() {
    var quantityInput = document.getElementById("quantity");
    var decreaseButton = document.querySelector("#decrease");
    var increaseButton = document.querySelector("#increase");

    if (decreaseButton && increaseButton) {
        decreaseButton.addEventListener("click", function () {
            decrementQuantity();
        });

        increaseButton.addEventListener("click", function () {
            incrementQuantity();
        });
    }

    function decrementQuantity() {
        var currentValue = parseInt(quantityInput.value);
        if (currentValue > 1) {
            quantityInput.value = currentValue - 1;
        }
    }

    function incrementQuantity() {
        var currentValue = parseInt(quantityInput.value);
        var stock = parseInt(document.getElementById('product_stock').textContent.split(': ')[1]);
        if (currentValue < stock) {
            quantityInput.value = currentValue + 1;
        }
    }

    var mainImage = document.getElementById('img_article');
    var subImages = document.querySelectorAll('.sub_img');

    if (mainImage && subImages) {
        subImages.forEach(function(image) {
            image.addEventListener('click', function() {
                var clickedImagePath = image.getAttribute('src');
                var currentMainImagePath = mainImage.getAttribute('src');

                if (currentMainImagePath !== clickedImagePath) {
                    mainImage.setAttribute('src', clickedImagePath);
                    image.setAttribute('src', currentMainImagePath);
                }
            });
        });
    }

    var currentIndex = 0;

    var leftButton = document.getElementById('left');
    var rightButton = document.getElementById('right');

    if (leftButton && rightButton) {
        leftButton.addEventListener('click', function() {
            currentIndex = (currentIndex === 0) ? subImages.length - 1 : currentIndex - 1;
            swapImages();
        });

        rightButton.addEventListener('click', function() {
            currentIndex = (currentIndex === subImages.length - 1) ? 0 : currentIndex + 1;
            swapImages();
        });
    }

    function swapImages() {
        var tempSrc = mainImage.src;
        mainImage.src = subImages[currentIndex].src;
        subImages[currentIndex].src = tempSrc;
    }

    mainImage.addEventListener('click', function() {
        var fullscreenImage = document.createElement('div');
        fullscreenImage.classList.add('fullscreen-image');
        var closeButton = document.createElement('span');
        closeButton.classList.add('close-button');
        closeButton.innerHTML = '&times;';
        fullscreenImage.appendChild(closeButton);
        var img = document.createElement('img');
        img.src = this.src;
        fullscreenImage.appendChild(img);
        document.body.appendChild(fullscreenImage);

        closeButton.addEventListener('click', function() {
            fullscreenImage.remove();
        });
    });

    const params = new URLSearchParams(window.location.search);
    const productId = params.get('id');
    const productUrl = `http://localhost:3000/api/products/${productId}`;

    function displayProductDetails(product) {
        document.getElementById('product_name').textContent = product.name;
        const descriptionElement = document.getElementById('product_description');
        const fullDescription = product.description;
        if (fullDescription.length > 150) {
            const shortDescription = fullDescription.substring(0, 150) + '...';
            descriptionElement.textContent = shortDescription;
    
            const moreSpan = document.createElement('span');
            moreSpan.textContent = ' more';
            moreSpan.style.color = 'blue';
            moreSpan.style.cursor = 'pointer';
            descriptionElement.appendChild(moreSpan);
    
            moreSpan.addEventListener('click', function() {
                descriptionElement.textContent = fullDescription;
            });
        } else {
            descriptionElement.textContent = fullDescription;
        }
    
        document.getElementById('product_stock').textContent = `Stock: ${product.stock}`;
 
        let price = product.price;
        let priceWithReduction = product.price;
        let priceClass = 'prix-initial'; 
        if (product.réduction !== 0) {
            priceWithReduction = product.price - (product.price * (product.réduction / 100));
            priceClass = 'prix-initial-promo'; 
        }
    
        document.getElementById('product_price').innerHTML = `
        Prix:  ${product.réduction !== 0 ? `<span class="prix-réduit">${priceWithReduction.toFixed(2)} €</span>` : ''}
            <span class="${priceClass}">${price.toFixed(2)} €</span>
            
        `;
        document.getElementById('img_article').src = product.image_url;
        document.getElementById('img_article').alt = product.name;
    
        if (product.langage_name && product.langage_name !== 'N/A') {
            document.getElementById('data1').textContent = product.langage_name;
        } else {
            document.querySelector('.langue').style.display = 'none';
        }
    
        if (product.edition_name && product.edition_name !== 'N/A') {
            document.getElementById('data2').textContent = product.edition_name;
        } else {
            document.querySelector('.edition').style.display = 'none';
        }
    
        if (product.licence_name && product.licence_name !== 'N/A') {
            document.getElementById('data3').textContent = product.licence_name;
        } else {
            document.querySelector('.licence').style.display = 'none';
        }
    
        if (product.state_name && product.state_name !== 'N/A') {
            document.getElementById('data4').textContent = product.state_name;
        } else {
            document.querySelector('.etat').style.display = 'none';
        }
    
        const caracterDivs = document.querySelectorAll('.caract > div');
        let visibleIndex = 0;
    
        for (let i = 0; i < caracterDivs.length; i++) {
            if (caracterDivs[i].style.display !== 'none' && window.getComputedStyle(caracterDivs[i]).display !== 'none') {
                if (visibleIndex % 2 === 0) {
                    caracterDivs[i].classList.add('color1');
                    caracterDivs[i].classList.remove('color2');
                } else {
                    caracterDivs[i].classList.add('color2');
                    caracterDivs[i].classList.remove('color1');
                }
                visibleIndex++;
            }
        }

        document.querySelector('.item_button').addEventListener('click', function() {
            addToCart(product);
        });
    }
    
    fetch(productUrl)
        .then(response => response.json())
        .then(data => displayProductDetails(data))
        .catch(error => {
            console.error("Erreur lors de la récupération des détails du produit :", error);
        });

    function addToCart(product) {
        const quantity = parseInt(quantityInput.value);
        let cart = JSON.parse(localStorage.getItem('panier')) || [];
        
        const existingProduct = cart.find(item => item.id === productId);
        if (existingProduct) {
            // Si le produit existe déjà dans le panier, mettre à jour la quantité
            existingProduct.quantity += quantity;
        } else {
            // Sinon, ajouter le produit au panier avec sa quantité
            cart.push({
                id: productId,
                name: product.name,
                price: product.price,
                image: product.image_url,
                quantity: quantity
            });
        }

        localStorage.setItem('panier', JSON.stringify(cart));
        alert('Produit ajouté au panier');
    }
});
