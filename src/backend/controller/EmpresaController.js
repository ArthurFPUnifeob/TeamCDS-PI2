const Empresa = require('../models/Empresa.js')
const connection = require('../database/connection.js')

class EmpresaController extends Empresa {
    constructor(connetion) {
        super(connetion)
    }

    #validateData(data) {

    }

    createNewEmpresa(data) {
        console.log(data)
        // super.create()
    }

}

module.exports = new EmpresaController(connection)