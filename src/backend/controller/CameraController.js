const Camera = require('../models/Camera.js')
const connection = require('../database/connection.js')

class CameraController extends Camera {
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

    createNewCamera() {
        console.log(this.data)
        super.create(this.#callback, this.data.get('tipo'),this.data.get('localizacao') )        // Tem que adicionar o FOREIGN KEY (empresa_idempresa)
        
    }
}
module.exports =  CameraController
