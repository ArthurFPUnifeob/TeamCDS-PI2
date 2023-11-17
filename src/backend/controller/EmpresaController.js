const Empresa = require('../models/Empresa.js')
const connection = require('../../backend/database/connection.js')

class EmpresaController extends Empresa {
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

    createNewEmpresa() {
        console.log(this.data)
        /* super.create(this.#callback, this.data.get('name'), this.data.get('telefone'), this.data.get('email'), this.data.get('this.endereco'), this.data.get('cnpj'), this.data.get('password'), this.data.get('confirm-password') ) */
    }

    validadeLogin(){
        return true
    }
}
module.exports =  EmpresaController