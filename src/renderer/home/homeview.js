localStorage.clear()
const { ipcRenderer } = require('electron');
const EmpresaController = require('../../backend/controller/EmpresaController.js')
const loginForm = document.getElementById('login-form')

loginForm.addEventListener("submit", (e) => {
    e.preventDefault()
    const loginFormData = new FormData(loginForm)
    const loginView = new HomeView(loginFormData)
    const empController = new EmpresaController(loginView.mapData)
    empController.validadeLogin().then(async (result) => {
        if(result){
            localStorage.setItem('idEmpresa', `${result.idempresa}`);
            await ipcRenderer.invoke('load-dashboard-page');
        } else{
            document.getElementById('passwordError').style.display = 'block';
            document.getElementById('erro').style.display='none';
        }
    })
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