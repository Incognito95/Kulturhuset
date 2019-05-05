const db = require('../config/mysql')() // connection to the database

module.exports = function(app) {

 // ==============Admin=============== //

 app.get('/admin', (req,res) => {
    res.render('pages', { 'title': 'Admin', 'content': 'Super secret page!!' });
});

app.get('/admin/categories', (req, res) => { res.render('categories');
});


app.get('/admin/siteinfo', (req, res) => {
	res.render('siteinfo');
});

app.get('/admin/brands', (req, res) => {
	res.render('brands');
});

app.get('/admin/pages', (req, res) => {
	res.render('pages');
});

//----------------- Produkter----------------//
app.get('/admin/Arrangementer', (req, res, next) => {
	db.query(`SELECT events.id, events.events_title, events.price, events.duration, events.time, movies_title, events.location FROM kulturhuset.events;`, function(err, users){
		if (err)return next (err);
		res.render('events1', {users, 'title': 'Home'} );
	});
});

//----------------- create_events----------------//
app.get('/admin/Arrangementer/opret', (req, res) => {
    res.render('create_events', {'title' : 'Opret produkt'});
});







app.post('/admin/Arrangementer/opret', (req, res) => {
    db.query('INSERT INTO events SET events_title = ?, time = ?, location = ?, duration = ?, price = ?', [ req.fields.events_title, req.fields.time, req.fields.location, req.fields.duration, req.fields.price], function(err, result){
        if (err) throw (err);
        res.redirect('/admin/Arrangementer');
    });
});

app.get('/admin/Arrangementer/rediger/:id', function (req, res) {
    let id = req.params.id;
    db.query(`SELECT id, events_title, time ,location,price, duration, FROM kulturhuset.events WHERE id = ?`, [id], function (err, results){
       if(err){
           throw err;
       }
       res.render("edit_events", {'result': results[0]})
   });
      
   });
   
   
   app.post('/admin/Arrangementer/rediger/:id', (req, res) => {
       db.query('UPDATE events SET name = ?, date = ?, location = ?, duration = ?, price = ?, WHERE id = ? ', [ req.fields.name, req.fields.date, req.fields.location, req.fields.duration, req.fields.price, req.params.id ], function(err, result){
           if (err) throw (err);
           res.redirect('/admin/Arrangementer');
       });
   });

}