const EmpresaController = require('../../backend/controller/EmpresaController.js')

singinForm = document.getElementById("singin-form")

singinForm.addEventListener("submit", (e) => {
    e.preventDefault()
    const singinFormData = new FormData(singinForm)
    const singinView = new SinginView(singinFormData)
    singinView.createNewEmpresaHandler(singinFormData)
})


class SinginView extends EmpresaController{ 
    constructor(formdata){
        super()
        this.formdata = formdata
        this.mapData = new Map()
        this.#createMapData()
    }

    #createMapData(){
        for(const pair of this.formdata.entries()){
            this.mapData.set(pair[0], pair[1])
        }
    }
    
    createNewEmpresaHandler(){
        console.log(this.mapData)
    }
}