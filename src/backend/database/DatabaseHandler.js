const connection = require("./connection.js")

class DatabaseHandler {

    openConnection() {
        connection.connect((error) => {
            if (error) {
                console.error(
                    "Erro ao conectar no banco" +
                    error.message
                )
            } else {
                console.log(
                    "Conexão efetuada com sucesso"
                )
            }
        })
    }

    closeConnection() {
        if (connection.state === 'connected') {
            connection.end((error) => {
                if (error) {
                    console.error("Erro ao fechar no banco" + error.message);
                } else {
                    console.log("Conexão encerrada com sucesso");
                }
            });
        } else {
            console.log("Conexão já encerrada.");
        }
    }

}

module.exports = DatabaseHandler