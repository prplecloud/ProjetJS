const pool = require('../config/database');

exports.getProducts = (req, res) => {
    const query = `
      SELECT p.*, c.name as category_name
      FROM products p
      JOIN categories c ON p.categories_id = c.categories_id
    `;
    pool.query(query, (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      res.json(results);
    });
  };


exports.getProductById = (req, res) => {
  const { id } = req.params;
  pool.query('SELECT * FROM products WHERE products_id = ?', [id], (error, results) => {
    if (error) {
      return res.status(500).json({ error: error.message });
    }
    if (results.length === 0) {
      return res.status(404).json({ message: 'Product not found' });
    }
    res.json(results[0]);
  });
};

exports.getProductsByCategories = (req, res) => {
    const { id } = req.params;
    pool.query('SELECT * FROM products WHERE categories_id = ?', [id], (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Product not found' });
      }
      res.json(results);
    });
  }

  exports.getProductsByLanguage = (req, res) => {
    const { id } = req.params;
    pool.query('SELECT * FROM products WHERE langage_id = ?', [id], (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Product not found' });
      }
      res.json(results);
    });
  }

  exports.getProductByState = (req, res) => {
    const { id } = req.params;
    pool.query('SELECT * FROM products WHERE state_id = ?', [id], (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Product not found' });
      }
      res.json(results);
    });
  }

  exports.getProductByLicence = (req, res) => {
    const { id } = req.params;
    pool.query('SELECT * FROM products WHERE licence_id = ?', [id], (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Product not found' });
      }
      res.json(results);
    });
  }

  exports.getProductByEdition = (req, res) => {
    const { id } = req.params;
    pool.query('SELECT * FROM products WHERE edition_id = ?', [id], (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      if (results.length === 0) {
        return res.status(404).json({ message: 'Product not found' });
      }
      res.json(results);
    });
  }

exports.getBoosters = (req, res) => {
    pool.query('SELECT * FROM products WHERE categories_id = 1', (error, results) => {
      if (error) {
        return res.status(500).json({ error: error.message });
      }
      res.json(results);
    });
  };

  

