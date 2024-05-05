const data = require('../data.json');

//Get all sneakers
exports.getSneakers = (req, res) => {
    const sneakers = data.sneakers;
    res.send(data.sneakers);
}

//Get Sneaker by ID
exports.getSneaker = (req, res) => {
const id = parseInt(req.params.id);
const sneakers = data.sneakers;
const sneaker = sneakers.find(s => s.id === id);
    if (!sneaker) {
        res.status(404).json ({
            message: "Sneaker not found"
        });
    } else {
        res.status(200).json ({
            message: "Sneaker Found successfully",
            sneaker
        });
    }  
    
}