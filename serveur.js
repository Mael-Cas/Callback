const express = require('express')
const BodyParser = require('body-parser')
const https = require("https");

const PORT = 10000;
const app = express();

app.use(BodyParser.json());
app.use(BodyParser.urlencoded({extended : true}));
app.use()


app.post('/callback', (req, res) => {

    console.log(req)

})




app.listen(PORT, () => {
    console.log(`serveur demarré : http://localhost:${PORT}`)
})