const express = require('express');
const app = express();
const cors = require('cors');
const port = 3000;


app.use(cors());

const sneakersRoutes = require('./routes/controllers');
app.use(sneakersRoutes);

app.listen(port, () => console.log(`Server is running on port ${port}`));