module.exports = function (app) {
    app.use((req, res) => {
        res.status(404);
        res.render('error-page', {
            'title': '404: Page not found',
            'content': '',
            session: req.session.user
        });
    });

    app.use((error, req, res, next) => {
        res.status(500);
        res.render('error-page', {
            'title': '500: Internal Server Error',
            'content': 'Something went wrong on your test server. Check your logs.',
            session: req.session.user
        });
        next(error);
    });
};