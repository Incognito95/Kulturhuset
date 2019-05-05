/*const validate = require('./services/validate');*/
const express = require('express');
const stripe = require('stripe')('sk_test_4oq0l9U09gFcdb07TdNRRiUE003l751Jaf');
var bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 3030;
app.get('/test', (req, res) => {
    res.end('virker ikke');
})

require('./config/index')(app);
require('./routes/index')(app);
require('./error-handling/index')(app);

app.listen(port, (err)=>{
    if (err) return console.log(err)
    console.log('kulturhuset kører på', port)
});
