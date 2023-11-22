const Empresa = require('../models/Empresa.js')
const connection = require('../../backend/database/connection.js')

class EmpresaController extends Empresa {
    constructor(data) {
        super(connection)
        this.data = data

    }

    createNewEmpresa() {
        console.log(this.data)
        /* super.create(this.#callback, this.data.get('name'), this.data.get('telefone'), this.data.get('email'), this.data.get('this.endereco'), this.data.get('cnpj'), this.data.get('password'), this.data.get('confirm-password') ) */
    }


    async validadeLogin() {
        try {
            
            const result = await super.getID(
                /* this.data.get('cnpj'),
                this.data.get('password') */
                '59.764.555/0001-52',
                'unifeob@123'
            )
            return result[0]
        }
        catch (error) {
            console.log(error)
            throw error;
        }
    }
}
module.exports = EmpresaController