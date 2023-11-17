const DatabaseHandler = require("../database/DatabaseHandler.js")

class Incidente extends DatabaseHandler {

    constructor(connection) {
        super(connection)
        this.connection = connection
    }
    create(callback, gravidade, confDetec, tempo, tipo, acao) {
        super.openConnection()

        const sql = "INSERT INTO empresa (gravidade, confDetec, tempo, tipo, acao) VALUES (?,?,?,?,?);"

        const values = [
            gravidade,
            confDetec,
            tempo,
            tipo,
            acao,
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

module.exports = Incidente