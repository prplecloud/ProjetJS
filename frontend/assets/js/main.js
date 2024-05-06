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