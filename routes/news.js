const db = require('../config/mysql')()

module.exports = function (app) {
	app.get('/news', (req, res, next) => { // refers to the page
		db.query(`SELECT news FROM events WHERE id IN (1,2,3,4,5,6);`, (err, users) => { // queries the database sentence
			res.render('news', { users }) // renders the page
		})
    }
)};
    
 // end of module.exports closing bracket