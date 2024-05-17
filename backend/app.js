const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;


app.use(cors());

const e_commerce = require('./routes/routes');
app.use(e_commerce);

app.listen(port, () => console.log(`Server is running on port ${port}`));