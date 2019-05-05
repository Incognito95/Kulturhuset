module.exports = function (app) {
    app.get('/reserve/:id', (req, res) => {
        res.render('reserve')
    })

    app.post('/reserve/:id', (req, res) => {
        db.query(`INSERT INTO id, quantity FROM reservation`), (err, users) => {
            if (err) throw err;
            res.render('reserve', {users, 'content':'thanks for reserving a ticket!'})
            console.log(results);
        };
    });


} // module exports closing bracket