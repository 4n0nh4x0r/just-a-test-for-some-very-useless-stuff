var express = require('express');
var app = express();
var args = process.argv.slice(2)
var port = args[0]

app.listen(port,() => {
    console.log(`Server started on port ${port}`);
})


app.get('/', function(req, res) {
    res.send('UwU');
});

