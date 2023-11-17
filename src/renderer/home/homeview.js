const { ipcRenderer } = require('electron');
const EmpresaController = require('../../backend/controller/EmpresaController.js')

singinForm = document.getElementById("singin-form")

singinForm.addEventListener("submit", async (e) => {
    e.preventDefault()
    const singinFormData = new FormData(singinForm)
    const singinView = new SinginView(singinFormData)
    const empController = new EmpresaController(singinView.mapData)
    if(empController.validadeLogin()){
        await ipcRenderer.invoke('load-dasbord-page');
    }
})

class HomeView {
    constructor(formdata) {
        this.formdata = formdata
        this.mapData = new Map()
        this.#createMapData()
    }
    #createMapData() {
        for (const pair of this.formdata.entries()) {
            this.mapData.set(pair[0], pair[1])
        }
    }
}