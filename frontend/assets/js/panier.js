document.addEventListener('DOMContentLoaded', function() {
    // Récupérer les données du panier depuis le local storage
    const panierData = JSON.parse(localStorage.getItem('panier'));

    // Sélectionner la div où nous allons afficher tous les articles
    const articleAllDiv = document.querySelector('.article_all');

    // Fonction pour mettre à jour le prix lorsque la quantité change
    function updatePrice(articleDiv, article) {
        const quantityInput = articleDiv.querySelector('.formulaire_qty input[name="quantity"]');
        const prixDesc = articleDiv.querySelector('.prix_desc');
        const prixTotal = articleDiv.querySelector('.prix p');

        // Écouter les changements de la quantité
        quantityInput.addEventListener('change', function() {
            let newQuantity = parseInt(quantityInput.value);

            // Vérifier si la nouvelle quantité est supérieure à zéro et inférieure ou égale au stock
            if (newQuantity <= 0 || isNaN(newQuantity) || newQuantity > article.stock) {
                // Si la nouvelle quantité est inférieure ou égale à zéro ou dépasse le stock, réinitialiser à 1
                newQuantity = 1;
                quantityInput.value = 1;
            }

            const newTotal = article.price * newQuantity;

            // Mettre à jour le prix total
            prixTotal.textContent = newTotal.toFixed(2) + '€';

            // Mettre à jour la quantité dans les données du panier
            article.quantity = newQuantity;

            // Mettre à jour les données du panier dans le local storage
            localStorage.setItem('panier', JSON.stringify(panierData));

            // Mettre à jour les prix totaux
            updateTotalPrice(panierData);
        });
    }

    // Vérifier si le panier est vide
    if (panierData && panierData.length > 0) {
        // Parcourir les éléments du panier
        panierData.forEach(article => {
            const total = article.price * article.quantity;
            const articleDiv = document.createElement('div');
            articleDiv.classList.add('article_line');

            // Créer la structure HTML pour chaque article
            articleDiv.innerHTML = `
                <div class="img_article">
                    <img id="article_img" src="${article.image}" alt="">
                </div>
                <div class="name_desc">
                    <p class="name_article">${article.name}</p>
                    <p class="prix_desc"> Unité : ${article.price.toFixed(2)} €</p>
                </div>
                <form action="" class="formulaire_qty">
                    <input type="number" name="quantity" id="quantity" min="1" max="${article.stock}" value="${article.quantity}">
                </form>
                <div class="prix">
                    <p>${total.toFixed(2)}€</p>
                </div>
            `;

            // Ajouter l'élément articleDiv à la div articleAllDiv
            articleAllDiv.appendChild(articleDiv);

            // Mettre à jour le prix lorsque la quantité change
            updatePrice(articleDiv, article);
        });
    } else {
        // Si le panier est vide, afficher un message
        articleAllDiv.innerHTML = "<p>Le panier est vide.</p>";
    }

    // Mettre à jour les prix totaux une fois que la page est chargée
    updateTotalPrice(panierData);
});

function updateTotalPrice(panierData) {
    // Sélectionner les éléments des prix
    const prixTotalElement = document.querySelector('.prix_total_ctn p:last-child');
    const prixLivraisonElement = document.querySelector('.prix_livraison_ctn p:last-child');
    const prixTTCElement = document.querySelector('.prix_ttc_ctn p:last-child');

    // Vérifier si le panier est vide
    if (!panierData || panierData.length === 0) {
        // Si le panier est vide, mettre à jour les prix avec 0
        prixTotalElement.textContent = '0.00 €';
        prixLivraisonElement.textContent = '0.00 €';
        prixTTCElement.textContent = '0.00 €';
        return; // Sortir de la fonction
    }

    // Calculer le prix total des articles dans le panier
    let totalPrice = 0;
    panierData.forEach(article => {
        totalPrice += article.price * article.quantity;
    });

    // Mettre à jour le prix total
    prixTotalElement.textContent = totalPrice.toFixed(2) + ' €';

    // Calculer le prix TTC en ajoutant le prix de livraison (5.90 €)
    const prixLivraison = 5.90;
    const prixTTC = totalPrice + prixLivraison;

    // Mettre à jour les prix de livraison et TTC
    prixLivraisonElement.textContent = prixLivraison.toFixed(2) + ' €';
    prixTTCElement.textContent = prixTTC.toFixed(2) + ' €';
}

