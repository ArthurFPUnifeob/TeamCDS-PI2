const { app, BrowserWindow, ipcMain } = require('electron')
require('electron-reloader')(module)

let win
let globalEmpresaID

function createWindow() {
  win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences: {
      nodeIntegration: true,
      contextIsolation: false,
    }
  })

  win.loadFile('src/renderer/home/index.html')
}

app.whenReady().then(() => {
  createWindow()

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow()
    }
  })

  app.on('window-all-closed', () => {
    if (process.platform !== 'darwin') {
      app.quit()
    }
  })

  ipcMain.handle('load-home-page', () => {
    let currentWindow = BrowserWindow.getFocusedWindow();
    currentWindow.loadFile('src/renderer/home/index.html');
  });

  ipcMain.handle('load-dashbord-page', async (_,data) => {
    let currentWindow = BrowserWindow.getFocusedWindow();
    await currentWindow.loadFile(`src/renderer/dashbord/dashbord.html`);
    globalEmpresaID = data
    win.webContents.send('getEmpresaID', globalEmpresaID)
  });

})