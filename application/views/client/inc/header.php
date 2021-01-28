<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title><?php echo !empty($main_content) ? ucwords(explode('/',$main_content)[1]) : ''; ?> | <?php echo $this->setting->settings_site_title; ?></title>
  <!--Custom CSS -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/css/custom.css?v=<?php echo rand() * 32; ?>">
  <link rel='stylesheet' href='<?php echo base_url(); ?>assets/admin/assets/css/pace-theme-flat-top.css' >
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/dist/css/adminlte.min.css">
  <script src="<?php echo base_url();?>assets/front/assets/js/jquery.3.2.1.min.js" type="text/javascript"></script>
  <!-- DataTables -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>

  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <script src="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  <link href="//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
    <script src="https://www.chartjs.org/dist/2.9.4/Chart.min.js"></script>
	<script src="https://www.chartjs.org/samples/latest/utils.js"></script>
	
	  <!-- fullCalendar -->
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/fullcalendar/main.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/fullcalendar-daygrid/main.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/fullcalendar-timegrid/main.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/fullcalendar-bootstrap/main.min.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/assets/plugins/daterangepicker/daterangepicker.css">

  <script type="text/javascript">
      $(function() {
        function dateCheck(from,to,check) {
            
            var fDate,lDate,cDate;
            fDate = Date.parse(from);
            lDate = Date.parse(to);
            cDate = Date.parse(check);

            if((cDate <= lDate && cDate >= fDate)) {
                return true;
            }
            return false;
        }
        var a = new Date(2021, 0, 10); // April 10, 2012
        var b = new Date(2021, 0, 20); // April 20, 2012
        var formatDateA = a.toLocaleDateString();
        var formatDateB = b.toLocaleDateString();
        $("#datepicker").datepicker({
          beforeShowDay: function(d) {
            return [true, a <= d && d <= b ? "my-class" : ""];
          }
        });

        $("#datepicker").on('change',function(){
            console.log($(this).val());
            if(dateCheck(formatDateA, formatDateB,$(this).val())){
                toastr.success("Available");
                $("#submit_project").removeAttr('disabled');
            }else{
                toastr.error("Not Available");
                $("#submit_project").attr("disabled",'true');
            }
        });
        
      });
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });
 

    $('input[type=checkbox]').each(function(){
      if($(this).is(':checked')){
          $(this).parent().parent().css('backgroundColor','#e8a127');
      }else{
          $(this).parent().parent().css('backgroundColor','#fff');
      }
    });

    function myFunctions(x, _this) {
      if (_this.checked) {
        x.style.backgroundColor = '#e8a127';
      } else  {
        x.style.backgroundColor = '#E6B86A';
      }
    }
  </script>

</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">
    <?php if($this->session->flashdata('msg') == 1):?>
      <script>toastr.success('<?php echo $this->session->flashdata('alert_data')?>');</script>
      <?php elseif($this->session->flashdata('msg') == 2):?>
        <script>toastr.error('<?php echo $this->session->flashdata('alert_data')?>');</script>
    <?php endif;?>