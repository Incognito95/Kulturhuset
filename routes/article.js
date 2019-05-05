const db = require('../config/mysql')() // connection to the database

module.exports = function(app) {
    app.get('/article/:id', (req, res) => {
        db.query(`SELECT news, events_images FROM events WHERE id = ?`, [req.params.id], (err, users) => {
            if (err) throw err;
            res.render('article', { users })
        });
    });
        


}