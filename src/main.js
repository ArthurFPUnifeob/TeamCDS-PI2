const { app, BrowserWindow, ipcMain } = require('electron')
require('electron-reloader')(module)


function createWindow () {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
    webPreferences:  {
      nodeIntegration:  true,
      contextIsolation: false
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
ipcMain.handle('load-dasbord-page', () => {
  let currentWindow = BrowserWindow.getFocusedWindow();
  currentWindow.loadFile('src/renderer/dashbord/dashbord.html');
});


