const db = require('../config/mysql')();

module.exports = function (app) {
    app.get('/events', (req, res) => {
        db.query(`SELECT events_title, id, location, movies_title FROM events`, function (err, users) {
            res.render('events', {users, title: 'events'})
          })
})

} // end of module exports closing bracket