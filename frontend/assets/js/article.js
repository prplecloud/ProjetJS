var quantityInput = document.getElementById("quantity");
var decreaseButton = document.querySelector("#decrease");
var increaseButton = document.querySelector("#increase");

decreaseButton.addEventListener("click", function () {
    decrementQuantity();
});

increaseButton.addEventListener("click", function () {
    incrementQuantity();
});

function decrementQuantity() {
    var currentValue = parseInt(quantityInput.value);
    if (currentValue > 0) {
        quantityInput.value = currentValue - 1;
    }
}

function incrementQuantity() {
    var currentValue = parseInt(quantityInput.value);
    if (currentValue < parseInt(quantityInput.max)) {
        quantityInput.value = currentValue + 1;
    }
}

document.addEventListener("DOMContentLoaded", function() {
    // Sélectionnez l'image principale
    var mainImage = document.getElementById('img_article');
    
    // Sélectionnez toutes les images avec la classe "sub_img"
    var subImages = document.querySelectorAll('.sub_img');
    
    
    // Parcourez chaque image et ajoutez un écouteur d'événements de clic
    subImages.forEach(function(image) {
        image.addEventListener('click', function() {
            // Récupérez le chemin de l'image cliquée
            var clickedImagePath = image.getAttribute('src');
            
            // Récupérez le chemin de l'image principale avant le changement
            var currentMainImagePath = mainImage.getAttribute('src');
            
            // Si le chemin de l'image principale n'est pas celui de l'image cliquée
            if (currentMainImagePath !== clickedImagePath) {
                // Remplacez le chemin de l'image principale par celui de l'image cliquée
                mainImage.setAttribute('src', clickedImagePath);
                
                // Placez l'URL de l'image principale initiale dans l'image cliquée
                image.setAttribute('src', currentMainImagePath);
            }
        });
    });
});

document.addEventListener('DOMContentLoaded', function() {
    var imgArticle = document.getElementById('img_article');
    var subImages = document.querySelectorAll('.sub_img');

    var currentIndex = 0;

    // Écouteurs d'événements pour les flèches
    document.getElementById('left').addEventListener('click', function() {
        currentIndex = (currentIndex === 0) ? subImages.length - 1 : currentIndex - 1;
        swapImages();
    });

    document.getElementById('right').addEventListener('click', function() {
        currentIndex = (currentIndex === subImages.length - 1) ? 0 : currentIndex + 1;
        swapImages();
    });

    // Fonction pour échanger les sources des images
    function swapImages() {
        var tempSrc = imgArticle.src;
        imgArticle.src = subImages[currentIndex].src;
        subImages[currentIndex].src = tempSrc;
    }
});

document.getElementById('img_article').addEventListener('click', function() {
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
