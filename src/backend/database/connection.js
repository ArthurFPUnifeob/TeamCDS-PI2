const mysql2 = require("mysql2")

const connection = mysql2.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root',
    database: 'TcdsPi2'
});

module.exports = connection