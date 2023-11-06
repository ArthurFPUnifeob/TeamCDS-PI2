const mysql2 = require("mysql2")

const connection = mysql2.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: '#1234Tur',
    database: 'teamcds-pi2db'
});

module.exports = connection