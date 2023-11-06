const Empresa = require('../models/Empresa.js')
const connection = require('../database/connection.js')

class EmpresaController extends Empresa {
    static connectionProp = connection
    constructor() {
        super(connectionProp)
    }

    #validateData(data) {

    }

    createNewEmpresa(data) {
        super.create()
    }

}

module.exports = EmpresaController