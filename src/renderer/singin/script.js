const EmpresaController = require('../../backend/controller/EmpresaController.js')

singinForm = document.getElementById("singin-form")

singinForm.addEventListener("submit", (e) => {
    e.preventDefault()
    const singinFormData = new FormData(singinForm)
    const singinView = new SinginView(singinFormData)
    const empCont = new EmpresaController(singinView.mapData)
    empCont.createNewEmpresa()
})

class SinginView {  
    constructor(formdata){
        this.formdata = formdata
        this.mapData = new Map()
        this.#createMapData()
    }
    #createMapData(){
        for(const pair of this.formdata.entries()){
            this.mapData.set(pair[0], pair[1])
        }
    }
}