$(document).ready(function(){
     datedf('0');
});
$('#datex').change(function(){
    var date = $('#datex').val(); 
   //alert(date);
    datedf(date);
});
function datedf(date){
    // var date = $('#datex').val();
$.ajax({
    url: "http://localhost/a/data.php",
    method: "GET",
    data:{
'datec':date
    },
    success: function(data) {
      // alert('s');
      // console.log(data);
      var player = ["happy", "sad","neutral","angry" ,"surprised","scared", "disgust"]
      var score = [];

      for(var i in data) {
        //player.push(data[i]);
        score.push(data[i].a);
       // alert(data[i].a);
      }

      // console.log(score);

      var chartdata = {
        labels: player,
        datasets : [
          {
            label: 'Emotions Chart',
             
 
            backgroundColor: ['#dc3545',
            '#fd7e14',
            '#ffc107',
            '#28a745',
            '#007bff',
            '#6f42c1',
            '#dc3545'],
            backgroundColor: ['#dc3545',
            '#fd7e14',
            '#ffc107',
            '#28a745',
            '#007bff',
            '#6f42c1',
            '#dc3545'],
              borderWidth: 1,
            hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
            hoverBorderColor: 'rgba(200, 200, 200, 1)',
            data: score
          }
        ]
      };

      var ctx1 = $("#mycanvas1");
      var ctx2 = $("#mycanvas2");
      var ctx3 = $("#mycanvas3");
      var ctx4 = $("#mycanvas4");
      var ctx5 = $("#mycanvas5");
      var ctx6 = $("#mycanvas6");
      var ctx7 = $("#mycanvas7");
      var ctx8 = $("#mycanvas8");
      var ctx9 = $("#mycanvas9");
      var ctx10 = $("#mycanvas10");
      var ctx14 = $("#mycanvas14");
      var barGraph = new Chart(ctx1, {
        type: 'bar',
        data: chartdata
      });
      var pieGraph = new Chart(ctx2, {
        type: 'pie',
        data: chartdata
      });
      var lineGraph = new Chart(ctx3, {
        type: 'line',
        data: chartdata
      });
      var radarGraph = new Chart(ctx4, {
        type: 'radar',
        data: chartdata
      });
      var bubbleGraph = new Chart(ctx5, {
        type: 'bubble',
        data: chartdata
      });
      var doughnut = new Chart(ctx14, {
        type: 'doughnut',
        data: chartdata
      });
      var vertical = new Chart(ctx9, {
        type: 'bar',
        data: chartdata
      });
      
      var horizontal = new Chart(ctx8, {
        type: 'horizontalBar',
        data: chartdata
      });
      
      var scatterGraph = new Chart(ctx6, {
        type: 'scatter',
        data: chartdata
      });
      var polarareaGraph = new Chart(ctx7, {
        type: 'polar area',
        data: chartdata
      });
      var stacked = HighCharts(ctx10, {
        type: 'bar',
        data: chartdata
      });
    },
    error: function(data) {
      console.log(data);
    }
  });
}
// });