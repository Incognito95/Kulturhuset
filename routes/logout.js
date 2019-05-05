module.exports = function (app) {
    app.get('/logout', (req,res) => {
        res.render('logout', {'title': 'logoout'});
    });
};