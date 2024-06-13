document.addEventListener('DOMContentLoaded', () => {
    const payButton = document.getElementById('update-stock-button');

    payButton.addEventListener('click', () => {
        updateStock();
    });
});

function updateStock() {
    let productsToUpdate = JSON.parse(localStorage.getItem('panier'));

    let dataToSend = productsToUpdate.map(product => ({
        id: parseInt(product.id),
        quantity: parseInt(product.quantity)
    }));

    fetch('http://localhost:3000/api/update-stock', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify(dataToSend),
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok'); 
        }
        return response.json();
    })
    .then(data => {
        console.log('Stock updated successfully:', data);


    })
    .catch(error => {
        console.error('Error updating stock:', error);
        localStorage.removeItem('panier');

    });
}
