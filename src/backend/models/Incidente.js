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
    selectData(empresaId) {
        return new Promise((resolve, reject) => {
            super.openConnection();
    
            const sql = `
                SELECT YEAR(i.tempo) AS year, MONTH(i.tempo) AS month, i.tipo,COUNT(*) AS contador
                FROM incidente i
                JOIN incidente_has_camera ihc ON i.idincidente = ihc.incidente_idincidente
                JOIN camera c ON ihc.camera_idcamera = c.idcamera
                WHERE c.empresa_idempresa = 1
                GROUP BY YEAR(i.tempo), MONTH(i.tempo), i.tipo
                ORDER BY year ASC, month ASC;
            `;
    
            const values = [
                empresaId
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

module.exports = Incidente