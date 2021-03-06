  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12 text-center">
            <h1>Marketing Analytics</h1>
            <br>
            <div class="d-flex justify-content-center align-items-center container">
                <form action="<?php echo base_url('client/analytics'); ?>" method="post" class='form-inline'>
                    <select id="analytics_year" name="analytics_year" class="form-control">
                        <option value="2019" <?php if($_POST['analytics_year'] == '2019') { echo 'selected'; } ?>>2019</option>
                        <option value="2020" <?php if($_POST['analytics_year'] == '2020') { echo 'selected'; } ?>>2020</option>
                        <option value="2021" <?php if($_POST['analytics_year'] == '2021') { echo 'selected'; } ?>>2021</option>
                    </select>
                    &nbsp;
                    <input type='submit' name='submit' class='btn btn-info' value='Filter By Year'>
                </form>
            </div>
          </div>



        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->

    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
              <!-- /.card-header -->
            <div class="col-md-12">
               
            <div class="card card-primary">
                  <div class="card-header" style="background:#333;">
                    <h3 class="card-title"><center>All Leads</center></h3>
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                    <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                        <canvas id="donutChart" style="min-height: 250px; height: 400px; max-height: 400px; max-width: 100%; display: block; width: 406px;" width="507" height="312" class="chartjs-render-monitor"></canvas>
                    </div>
                  <!-- /.card-body -->
            </div>     
              <!-- /.card-body -->

              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>

        <div class="row">
          <div class="col">
              <!-- /.card-header -->

            <div class="card card-primary">
                  <div class="card-header" style="background:#333;">
                    <h3 class="card-title"><center>Logo Leads By Month</center></h3>
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                    <div class="card-body">
                        
                        <div class="chart"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart" width="560" height="400"></canvas>
                        </div>
                    </div>
                  <!-- /.card-body -->
            </div>   
            </div>
              <!-- /.card-body -->
            <div class="col">
               
            <div class="card card-primary">
                  <div class="card-header" style="background:#333;" >
                    <h3 class="card-title"><center>Web Leads By Month</center></h3>
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                    <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="myChart2" width="560" height="400"></canvas>

                    </div>
                  <!-- /.card-body -->
            </div>     
              <!-- /.card-body -->

              </div>
              <!-- /.card-body -->
        </div>


        <div class="row">
          <div class="col">
              <!-- /.card-header -->

            <div class="card card-primary">
                  <div class="card-header" style="background:#333;">
                    <h3 class="card-title"><center>Flyers Leads By Month</center></h3>
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>
                      <button type="button" class="btn btn-tool" data-card-widget="remove">
                        <i class="fas fa-times"></i>
                      </button>
                    </div>
                  </div>
                    <div class="card-body">
                        
                        <div class="chart"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="flyers" width="560" height="400"></canvas>
                        </div>
                    </div>
                  <!-- /.card-body -->
            </div>   
            </div>
              <!-- /.card-body -->
            <div class="col">
               
            <div class="card card-primary">
                  <div class="card-header" style="background:#333;" >
                    <h3 class="card-title"><center>Creative Leads By Month</center></h3>
    
                    <div class="card-tools">
                      <button type="button" class="btn btn-tool" data-card-widget="collapse">
                        <i class="fas fa-minus"></i>
                      </button>

                    </div>
                  </div>
                    <div class="card-body"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                            <canvas id="creative" width="560" height="400"></canvas>

                    </div>
                  <!-- /.card-body -->
            </div>     
              <!-- /.card-body -->

              </div>
              <!-- /.card-body -->
        </div>



        <div class="row">
          <div class="col">
              <!-- /.card-header -->

                <div class="card card-primary">
                      <div class="card-header" style="background:#333;">
                        <h3 class="card-title"><center>SEO Leads By Month</center></h3>
        
                        <div class="card-tools">
                          <button type="button" class="btn btn-tool" data-card-widget="collapse">
                            <i class="fas fa-minus"></i>
                          </button>
                  
                        </div>
                      </div>
                        <div class="card-body">
                            
                            <div class="chart"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
                                <canvas id="seo" width="560" height="400"></canvas>
                            </div>
                        </div>
                      <!-- /.card-body -->
                </div>   
          </div>

          <div class="col"></div>
              <!-- /.card-body -->
    
              <!-- /.card-body -->
            <!-- /.card -->

          <!-- /.col -->
        </div>
        
        <!-- /.row -->
     
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <script>

$( document ).ready(function() {
var ctx = document.getElementById("myChart");
var myChart = new Chart(ctx, {
  type: 'bar',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
    datasets: [{
      label: '# of Leads',
      data: [<?php echo count($records2['logo']['01']); ?>, <?php echo count($records2['logo']['02']); ?>, <?php echo count($records2['logo']['03']); ?>, 
      <?php echo count($records2['logo']['04']); ?>, <?php echo count($records2['logo']['05']); ?>, <?php echo count($records2['logo']['06']); ?>, 
      <?php echo count($records2['logo']['07']); ?>, <?php echo count($records2['logo']['08']); ?>, <?php echo count($records2['logo']['09']); ?>, 
      <?php echo count($records2['logo']['10']); ?>, <?php echo count($records2['logo']['11']); ?>, <?php echo count($records2['logo']['12']); ?>],
      backgroundColor: [
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503',
        '#9e6503'
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 90,
          minRotation: 80
        },
          gridLines: {
          offsetGridLines: true // à rajouter
        }
      },
   ],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});
var ctx2 = document.getElementById("myChart2");
var myChart = new Chart(ctx2, {
  type: 'bar',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
    datasets: [{
      label: '# of Leads',
      data: [<?php echo count($records2['web']['01']); ?>, <?php echo count($records2['web']['02']); ?>, <?php echo count($records2['web']['03']); ?>, 
      <?php echo count($records2['web']['04']); ?>, <?php echo count($records2['web']['05']); ?>, <?php echo count($records2['web']['06']); ?>, 
      <?php echo count($records2['web']['07']); ?>, <?php echo count($records2['web']['08']); ?>, <?php echo count($records2['web']['09']); ?>, 
      <?php echo count($records2['web']['10']); ?>, <?php echo count($records2['web']['11']); ?>, <?php echo count($records2['web']['12']); ?>],
      backgroundColor: [
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
        'rgba(107, 170, 237, 0.5)',
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 90,
          minRotation: 80
        },
          gridLines: {
          offsetGridLines: true // à rajouter
        }
      },
   ],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});


var creative_chart = document.getElementById("creative");
var myChart = new Chart(creative_chart, {
  type: 'bar',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
    datasets: [{
      label: '# of Leads',
      data: [<?php echo count($records2['creative']['01']); ?>, <?php echo count($records2['creative']['02']); ?>, <?php echo count($records2['creative']['03']); ?>, 
      <?php echo count($records2['creative']['04']); ?>, <?php echo count($records2['creative']['05']); ?>, <?php echo count($records2['creative']['06']); ?>, 
      <?php echo count($records2['creative']['07']); ?>, <?php echo count($records2['creative']['08']); ?>, <?php echo count($records2['creative']['09']); ?>, 
      <?php echo count($records2['creative']['10']); ?>, <?php echo count($records2['creative']['11']); ?>, <?php echo count($records2['creative']['12']); ?>],
      backgroundColor: [
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)',
        'rgba(195, 128, 237, 0.5)'
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 90,
          minRotation: 80
        },
          gridLines: {
          offsetGridLines: true // à rajouter
        }
      },
   ],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});


var flyers_chart = document.getElementById("flyers");
var myChart = new Chart(flyers_chart, {
  type: 'bar',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
    datasets: [{
      label: '# of Leads',
      data: [<?php echo !empty(count($records2['flyers']['01'])) ? count($records2['flyers']['01']) : count($records2['flyers']['1']); ?>, <?php echo !empty(count($records2['flyers']['02'])) ? count($records2['flyers']['02']) : count($records2['flyers']['2']); ?>, 
        <?php echo !empty(count($records2['flyers']['03'])) ? count($records2['flyers']['03']) : count($records2['flyers']['3']); ?>, 
        <?php echo !empty(count($records2['flyers']['04'])) ? count($records2['flyers']['04']) : count($records2['flyers']['4']); ?>, 
        <?php echo !empty(count($records2['flyers']['05'])) ? count($records2['flyers']['05']) : count($records2['flyers']['5']); ?>, 
        <?php echo !empty(count($records2['flyers']['06'])) ? count($records2['flyers']['06']) : count($records2['flyers']['6']); ?>, 
        <?php echo !empty(count($records2['flyers']['07'])) ? count($records2['flyers']['07']) : count($records2['flyers']['7']); ?>, 
        <?php echo !empty(count($records2['flyers']['08'])) ? count($records2['flyers']['08']) : count($records2['flyers']['8']); ?>, 
        <?php echo !empty(count($records2['flyers']['09'])) ? count($records2['flyers']['09']) : count($records2['flyers']['9']) ; ?>, 
      <?php echo count($records2['flyers']['10']); ?>, <?php echo count($records2['flyers']['11']); ?>, <?php echo count($records2['flyers']['12']); ?>],
      backgroundColor: [
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)'
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 90,
          minRotation: 80
        },
          gridLines: {
          offsetGridLines: true // à rajouter
        }
      },
   ],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});


var seo_chart = document.getElementById("seo");
var myChart = new Chart(seo_chart, {
  type: 'bar',
  data: {
    labels: ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"],
    datasets: [{
      label: '# of Leads',
      data: [<?php echo !empty(count($records2['seo']['01'])) ? count($records2['seo']['01']) : count($records2['seo']['1']); ?>, 
      <?php echo !empty(count($records2['seo']['02'])) ? count($records2['seo']['02']) : count($records2['seo']['2']); ?>, 
      <?php echo !empty(count($records2['seo']['03'])) ? count($records2['seo']['03']) : count($records2['seo']['3']); ?>, 
      <?php echo !empty(count($records2['seo']['04'])) ? count($records2['seo']['04']) : count($records2['seo']['4']); ?>, 
      <?php echo !empty(count($records2['seo']['05'])) ? count($records2['seo']['05']) : count($records2['seo']['5']); ?>, 
      <?php echo !empty(count($records2['seo']['06'])) ? count($records2['seo']['06']) : count($records2['seo']['6']); ?>, 
      <?php echo !empty(count($records2['seo']['07'])) ? count($records2['seo']['07']) : count($records2['seo']['7']); ?>, 
      <?php echo !empty(count($records2['seo']['08'])) ? count($records2['seo']['08']) : count($records2['seo']['8']); ?>, 
      <?php echo !empty(count($records2['seo']['09'])) ? count($records2['seo']['09']) : count($records2['seo']['9']); ?>, 
      <?php echo count($records2['seo']['10']); ?>, <?php echo count($records2['seo']['11']); ?>, <?php echo count($records2['seo']['12']); ?>],
      backgroundColor: [
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
        'rgba(232, 176, 97, 0.5)',
      ],
      borderWidth: 1
    }]
  },
  options: {
    responsive: true,
    scales: {
      xAxes: [{
        ticks: {
          maxRotation: 90,
          minRotation: 80
        },
          gridLines: {
          offsetGridLines: true // à rajouter
        }
      },
   ],
      yAxes: [{
        ticks: {
          beginAtZero: true
        }
      }]
    }
  }
});

var donutChartCanvas = $('#donutChart').get(0).getContext('2d')
var donutData        = {
  labels: [
      'Flyers Leads',
      'Logo Leads',
      'Creative Content Leads',
      'Web Leads',
      'SEO Leads'
  ],
  datasets: [
    {
      data: [<?php echo $records['flyer']['count']; ?>,<?php echo $records['logo']['count']; ?>,<?php echo $records['creative']['count']; ?>,<?php echo $records['web']['count']; ?>,<?php echo $records['seo']['count']; ?>],
      backgroundColor : ['#e8b061', '#fa618a', '#c380ed', '#6baaed','#eda807'],
    }
  ]
}
var donutOptions     = {
  maintainAspectRatio : false,
  responsive : true,
}
//Create pie or douhnut chart
// You can switch between pie and douhnut using the method below.
var donutChart = new Chart(donutChartCanvas, {
  type: 'doughnut',
  data: donutData,
  options: donutOptions
})
 
});
  </script>
