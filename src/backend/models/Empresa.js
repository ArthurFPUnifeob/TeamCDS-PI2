const DatabaseHandler = require("../database/DatabaseHandler.js")

class Empresa extends DatabaseHandler {

    constructor(connection) {
        super(connection)
        this.connection = connection
    }
    create(callback, nome, telefone, email, endereço, cnpj, senha) {
        super.openConnection()

        const sql = "INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES (?,?,?,?,?,?);"

        const values = [
            nome,
            telefone,
            email,
            endereço,
            cnpj,
            senha,
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

module.exports = Empresa