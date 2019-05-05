const db = require('../config/mysql')(); // connection to the database

module.exports = function (app) {

app.get('/soeg',function (req,res) {
  const search = req.query.search.toUpperCase();
  db.query(`SELECT * FROM events WHERE  UPPER(events_title)   LIKE ? OR duration LIKE ?  OR time LIKE ? OR price LIKE ?;`,
   [`%${search}%`,`%${search}%`,`%${search}%`,`%${search}%`], function (err, users) {
      if (err) res.send(err);
      res.render('events', {users,'title': 'search'} );
      });
  });

}