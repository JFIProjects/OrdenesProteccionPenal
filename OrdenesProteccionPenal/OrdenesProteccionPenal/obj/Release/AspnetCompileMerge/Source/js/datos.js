function graficaPre(datos) {
    
       
            var nombre = [];
            var stock = [];
            var stocks = [];
            var color = ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)'];
            var bordercolor = ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)'];
            

            var info = [];
            var h = [];
            var m = [];
            var l = [];
    for (var i in datos) {
        h.push(datos[i].Hombres);
        m.push(datos[i].Mujeres);
        l.push(datos[i].Centro);
            
                }

    var barChartData = {
        labels: l,
        datasets: [
            {
                label: "Hombres",
                backgroundColor: "lightblue",
                borderColor: "blue",
                borderWidth: 1,
                data: h
            },
            {
                label: "Mujeres",
                backgroundColor: "pink",
                borderColor: "red",
                borderWidth: 1,
                data: m
            }
        ]
    };


    var chartOptions = {
        responsive: true,
        legend: {
            position: "top"
        },
        title: {
            display: true,
            //text: "Chart.js Bar Chart"
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }
            
           

            var mostrar = $("#miGrafico");

            var grafico = new Chart(mostrar, {
                type: 'bar',
                data: barChartData,
                options: chartOptions
            });
      
};

function graficaCom(datos) {

    var nombre = [];
    var stock = [];
    var stocks = [];
    var color = ['rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)'];
    var bordercolor = ['rgba(255,99,132,1)', 'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)'];


    var info = [];
    var h = [];
    var m = [];
    var l = [];
    var o = [];
    for (var i in datos) {
        h.push(datos[i].Hombres);
        m.push(datos[i].Mujeres);
        o.push(datos[i].NoIden);
        l.push(datos[i].Centro);

    }

    var barChartData = {
        labels: l,
        datasets: [
            {
                label: "Hombres",
                backgroundColor: "lightblue",
                borderColor: "blue",
                borderWidth: 1,
                data: h
            },
            {
                label: "Mujeres",
                backgroundColor: "pink",
                borderColor: "red",
                borderWidth: 1,
                data: m
            },
            {
                label: "No Identificado",
                backgroundColor: "lightgreen",
                borderColor: "green",
                borderWidth: 1,
                data: o
            }
        ]
    };


    var chartOptions = {
        responsive: true,
        legend: {
            position: "top"
        },
        title: {
            display: true,
            //text: "Chart.js Bar Chart"
        },
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero: true
                }
            }]
        }
    }



    var mostrar = $("#miGraficoCom");

    var grafico = new Chart(mostrar, {
        type: 'bar',
        data: barChartData,
        options: chartOptions
    });

};
