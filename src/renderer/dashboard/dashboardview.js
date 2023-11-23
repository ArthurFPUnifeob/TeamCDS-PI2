const { ipcRenderer } = require('electron');
const IncidenteController = require("../../backend/controller/IncidenteController");
const incidenteController = new IncidenteController()

let empresaID
let BDdata

ipcRenderer.on('getEmpresaID', (_,empresaid) =>{
  empresaID = empresaid
  incidenteController.getData(empresaID).then(result => {

    BDdata = result

    class DasbordView {
      constructor(lineCanva, barsCanva, pieCanva) {
        this.lineCanva = lineCanva;
        this.barsCanva = barsCanva;
        this.pieCanva = pieCanva;
      }
  
      #configurarGraficoBase() {
        return {
          responsive: true,
          maintainAspectRatio: false,
          layout: {
            padding: {
              left: 10,
              right: 10,
              top: 10,
              bottom: 10,
            },
          },
          elements: {
            point: {
              radius: 0,
            },
          },
        };
      }
  
      genereteLineGrafic() {
        const data = new GraficsGeneretor(BDdata);
        new Chart(this.lineCanva, {
          type: 'line',
          data: {
            labels: data.dataLineObj.lables,
            datasets: data.dataLineObj.datasets,
          },
          options: {
            ...this.#configurarGraficoBase(),
            scales: {
              y: {
                beginAtZero: true,
                ticks: {
                  stepSize: 1,
                },
              },
            },
            plugins: {
              legend: {
                display: true,
                position: 'bottom',
                labels: {
                  color: 'black',
                },
              },
              title: {
                display: true,
                text: 'Tipo de incidentes por mês',
                font: {
                  size: 24,
                },
              },
            },
          },
        });
      }
  
      genereteBarsGrafic() {
        const data = new GraficsGeneretor(BDdata);
        new Chart(this.barsCanva, {
          type: 'bar',
          data: {
            labels: data.dataBarObj.lables,
            datasets: data.dataBarObj.datasets,
          },
          options: {
            ...this.#configurarGraficoBase(),
            scales: {
              y: {
                stacked: true,
                beginAtZero: true,
                ticks: {
                  stepSize: 1,
                },
              },
              x: {
                stacked: true,
              },
            },
            plugins: {
              legend: {
                display: false,
              },
              title: {
                display: true,
                text: 'Total incidentes por mês',
                font: {
                  size: 24,
                },
              },
            },
          },
        });
      }
  
      generetePieGrafic() {
        const data = new GraficsGeneretor(BDdata);
        new Chart(this.pieCanva, {
          type: 'pie',
          data: {
            labels: data.dataPieObj.lables,
            datasets: data.dataPieObj.datasets,
          },
          options: {
            ...this.#configurarGraficoBase(),
            plugins: {
              legend: {
                display: true,
              },
              title: {
                display: true,
                text: 'Total incidentes por ano',
                font: {
                  size: 24,
                },
              },
            },
          },
        });
      }
    }
  
    class GraficsGeneretor {
      constructor(data) {
        this.data = data;
        this.typeData = ['Incendio', 'Roubo', 'Intrusão', 'Vandalismo', 'Furto', 'Assalto'];
        this.months = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
        this.dataLineObj = { lables: [], datasets: [] };
        this.dataBarObj = { lables: [], datasets: [] };
        this.dataPieObj = { lables: [], datasets: [] };
        this.cores = [
          '#AC3F3F',
          '#597396',
          '#1B2559',
          '#FBBB00',
          '#05CD99',
          '#9A4DFF',
          '#FF7F50',
          '#008080',
          '#800080',
          '#00CED1',
          '#FFD700',
          '#7CFC00',
        ];
        this.#gemLineDatasets();
        this.#gemBarDatasets();
        this.#gemPieDatasets();
      }
      #extrairDadosTipo(tipo) {
        return this.data.filter((incidente) => incidente.tipo === tipo).map((incidente) => {
          if (!this.dataLineObj.lables.includes(`${incidente.year}-${incidente.month}`)) {
            this.dataLineObj.lables.push(`${incidente.year}-${incidente.month}`)
          }
          return { x: `${incidente.year}-${incidente.month}`, y: incidente.contador }
        });
      }
      #gemLineDatasets() {
        for (let i = 0; i < this.typeData.length; i++) {
          this.dataLineObj.datasets.push({
            label: this.typeData[i],
            data: this.#extrairDadosTipo(this.typeData[i]),
            borderWidth: 2,
            borderColor: this.cores[i],
            backgroundColor: this.cores[i],
            fill: true,
          })
        }
      }
  
      #extrairDadosMonth(month) {
        return this.data.filter((incidente) => incidente.month === month).map((incidente) => {
          if (!this.dataBarObj.lables.includes(`${incidente.year}-${incidente.month}`)) {
            this.dataBarObj.lables.push(`${incidente.year}-${incidente.month}`)
          }
          return { x: `${incidente.year}-${incidente.month}`, y: incidente.contador }
        });
      }
      #gemBarDatasets() {
        for (let i = 0; i < this.months.length; i++) {
          this.dataBarObj.datasets.push({
            data: this.#extrairDadosMonth(this.months[i]),
            borderWidth: 2,
            borderColor: this.cores[i],
            backgroundColor: this.cores[i],
            fill: true,
          })
        }
      }
  
      #gemPieDatasets() {
        const dadosPie = this.#extrairDadosContator();
  
        this.dataPieObj.datasets.push({
          data: dadosPie.datasets,
          backgroundColor: this.cores.slice(0, dadosPie.lables.length),
          borderWidth: 0, // Remover bordas
        });
  
        this.dataPieObj.lables = dadosPie.lables;
      }
  
      #extrairDadosContator() {
        const dadosContator = {};
  
        this.data.forEach((incidente) => {
          const tipo = incidente.tipo;
  
          if (!(tipo in dadosContator)) {
            dadosContator[tipo] = 0;
          }
  
          dadosContator[tipo] += incidente.contador;
        });
  
        const lables = Object.keys(dadosContator);
        const datasets = lables.map((tipo) => dadosContator[tipo]);
  
        return { lables, datasets };
      }
    }
  
    const dachbordView = new DasbordView(
      document.getElementById('line').getContext('2d'),
      document.getElementById('bars').getContext('2d'),
      document.getElementById('pie').getContext('2d'))
    dachbordView.genereteLineGrafic()
    dachbordView.genereteBarsGrafic()
    dachbordView.generetePieGrafic()
  })
    .catch(error => {
      console.log(error)
    });
})

