const DatabaseHandler = require("../database/DatabaseHandler.js")

class Empresa extends DatabaseHandler {

    constructor(connection) {
        super()
        this.connection = connection
    }

    create(callback, nome, telefone, email, endereco, cnpj, senha) {
        super.openConnection()

        const sql = "INSERT INTO empresa (nome, telefone, email, endereco, cnpj, senha) VALUES (?,?,?,?,?,?);"

        const values = [
            nome,
            telefone,
            email,
            endereco,
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

    getID(cnpj, password) {
        return new Promise((resolve, reject) => {
            super.openConnection();

            const sql = `select idempresa from empresa where cnpj = ? and senha = ?`;

            const values = [
                cnpj, 
                password
            ];

            this.connection.query(sql, values, (erro, results) => {
                if (erro) {
                    reject(erro);
                } else {
                    resolve(results);
                }
                super.closeConnection();
            });

            
        });
    }
}

module.exports = Empresa