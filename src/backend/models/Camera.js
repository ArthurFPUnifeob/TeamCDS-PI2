const DatabaseHandler = require("../database/DatabaseHandler.js")

class Camera extends DatabaseHandler {

    constructor(connection) {
        super(connection)
        this.connection = connection
    }
    create(callback, tipo, localizacao) {
        super.openConnection()

        const sql = "INSERT INTO camera (tipo, localizacao) VALUES (?,?);"

        const values = [
            tipo,
            localizacao,
        ]

        this.connection.query(
            sql,
            values,
            (erro, results) => {
                if (erro) {
                    callback(erro, null);
                } else {
                    callback(null, results.insertId);
                }
            }
        );

        super.closeConnection();
    }
}

module.exports = Camera