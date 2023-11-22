const Incidente = require('../models/Incidente.js')
const connection = require('../database/connection.js')

class IncidenteController extends Incidente {
    constructor(data=null) {
        super(connection)
        this.data = data 
        this.batata = ''
    }
    #callback(erro, result) {
        console.log(erro)
        console.log(result)
    }

    createNewIncidente() {
        super.create(this.#callback, this.data.get('gravidade'), this.data.get('confDetec'), this.data.get('tempo'), this.data.get('tipo'), this.data.get('acao') )
    }
    
    async getData(id) {
        try {
            const resultG = await super.selectData(id);
            return resultG;
        } catch (error) {
            console.error(error);
            throw error;
        }
    }
}

module.exports =  IncidenteController