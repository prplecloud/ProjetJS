const token = "b4bf23c2-3400-47f7-ae61-6f80d08af2b7";


async function fetchPaymentIntent(cardDetails, token) {
    try {
        const result = await fetch("https://challenge-js.ynovaix.com/payment", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Authorization": "Bearer " + token,
            },
            body: JSON.stringify({ card: cardDetails }),
        });

        if (!result.ok) {
            const error = await result.json();
            throw new Error(error.message);
        }

        return await result.json();
    } catch (error) {
        throw new Error('Payment failed: ' + error.message);
    }
}


document.getElementById('payment-form').addEventListener('submit', async (e) => {
    e.preventDefault();
    
    const cardNumber = document.getElementById('cardNumber').value;
    const expiryDate = document.getElementById('expiryDate').value;
    const cvv = document.getElementById('cvv').value;
    
    const cardDetails = {
        number: cardNumber,
        expiry: expiryDate,

        cvc: cvv,
    };

    try {
        const paymentIntent = await fetchPaymentIntent(cardDetails, token);
        console.log('Payment successful', paymentIntent);
    } catch (error) {
        console.error('Payment failed', error);
    }

    console.log('cardNumber', cardNumber);
    console.log('expiryDate', expiryDate);
    console.log('cvv', cvv);
});
