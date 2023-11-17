const Incidente = require('../models/Incidente.js')
const connection = require('../database/connection.js')

class IncidenteController extends Incidente {
    constructor(data) {
        super(connection)
        this.data = data
    }
    #callback() {
        if (erro) {
            return erro;
        } else {
            return result;
        }
    }

    createNewIncidente() {
        console.log(this.data)
        super.create(this.#callback, this.data.get('gravidade'), this.data.get('confDetec'), this.data.get('tempo'), this.data.get('tipo'), this.data.get('acao') )
    }
}
module.exports =  IncidenteController