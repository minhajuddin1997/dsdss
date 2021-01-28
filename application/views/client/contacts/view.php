<style>
  #contact_view li {
    padding: 5px;
  }
</style>
<div class="content-wrapper" style="min-height: 1071.31px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Contacts</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Contacts</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
          <a class="btn btn-info" href="<?php echo base_url('/client/contacts/add'); ?>">Add Contact</a>
          <br><br>
            <div class="card card-primary card-outline">
          <div class="card-header" id="tab_mod">
            <h3 class="card-title" >
              All Contacts
            </h3>
          </div>

          <div class="card-body">
            <div class="row">
              <div class="col-7 col-sm-9">
                <div class="tab-content" id="vert-tabs-tabContent">
                  <div class="tab-pane text-left fade active show" id="vert-tabs-home" role="tabpanel" aria-labelledby="vert-tabs-home-tab">
                      <!-- Default box -->
                    <div class="row d-flex align-items-stretch">
                      <?php if(!empty($records)): $i=0; foreach($records as $row): $i++;?>
                            <div class="col-12 col-sm-6 col-md-4 align-items-stretch">
                              <div class="card bg-light" >
                                <div class="card-header text-muted border-bottom-0">
                                   <?php echo $row['name']; ?>
                                </div>
                                <div class="card-body pt-0" >
                                  <div class="row">
                                    <div class="col-7">
                                      <h2 class="lead"><b><?php echo $row['client_name']; ?></b></h2>
                                      <!--<p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>-->
                                      <ul class="ml-4 mb-0 fa-ul text-muted" id="contact_view">
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-globe"></i></span><?php echo $row['website']; ?></li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-envelope"></i></span><?php echo $row['email']; ?></li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-exclamation-circle"></i></span>
                                          <?php if($row['status'] == 0) { echo 'Awaiting for Approval'; } else { echo 'Active'; } ?></li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-user"></i></span>
                                          <?php $id = $row['role_id']; echo get_value_by_id('role', $id, 'role_name'); ?></li>
                                      </ul>
                                    </div>
                                    <div class="col-5 text-center">
                                      <img src="<?php echo base_url(); ?>uploads/contacts/<?php echo $row['display_picture']; ?>" alt="" class="img-circle img-fluid">
                                    </div>
                                  </div>
                                </div>
                                <div class="card-footer">
                                  <div class="text-right">
                                    <span class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success"  style="display:inline">
                                      <input type="checkbox" class="custom-control-input" id="<?php echo $row['client_id']; ?>" <?php echo ($row['client_status'] == 1) ? 'checked' : ''; ?>>
                                      <label class="custom-control-label" for="<?php echo $row['client_id']; ?>"></label>
                                    </span>
                                    <a href="#" class="btn btn-sm bg-teal">
                                      <i class="fas fa-comments"></i>
                                    </a>
                        
                                  </div>
                                </div>
                              </div>
                            </div>
                
                        <!-- /.card-footer -->
                      <!-- /.card -->
                
                    <?php endforeach; endif; ?>
                              </div>
                  </div>
                  <div class="tab-pane fade" id="vert-tabs-projectmanager" role="tabpanel" aria-labelledby="vert-tabs-projectmanager-tab">
                    <!-- Default box -->
                    <div class="row d-flex align-items-stretch">
                      <?php if(!empty($records)): foreach($records as $row): if($row['role_id'] == 4): ?>
                            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                              <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0">
                                   <?php echo 'Project Manager'; ?>
                                </div>
                                <div class="card-body pt-0">
                                  <div class="row">
                                    <div class="col-7">
                                      <h2 class="lead"><b><?php echo $row['client_name']; ?></b></h2>
                                      <!--<p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>-->
                                      <ul class="ml-4 mb-0 fa-ul text-muted">
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
                                      </ul>
                                    </div>
                                    <div class="col-5 text-center">
                                      <img src="<?php echo base_url(); ?>uploads/client/<?php echo $row['client_image']; ?>" alt="" class="img-circle img-fluid">
                                    </div>
                                  </div>
                                </div>
                                <div class="card-footer">
                                  <div class="text-right">
                                    <span class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success"  style="display:inline">
                                      <input type="checkbox" class="custom-control-input" id="<?php echo $row['client_id']; ?>" <?php echo ($row['client_status'] == 1) ? 'checked' : ''; ?>>
                                      <label class="custom-control-label" for="<?php echo $row['client_id']; ?>"></label>
                                    </span>
                                    <a href="#" class="btn btn-sm bg-teal">
                                      <i class="fas fa-comments"></i>
                                    </a>
                                    <a href="<?php echo base_url('admin/profile/get_client_profile'); ?>/<?php echo $row['client_id']; ?>" class="btn btn-sm btn-primary">
                                      <i class="fas fa-user"></i> View Profile
                                    </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                
                        <!-- /.card-footer -->
                      <!-- /.card -->
                
                    <?php endif; endforeach; endif; ?>
                    </div> 
                  </div>
                  <div class="tab-pane fade" id="vert-tabs-prospect" role="tabpanel" aria-labelledby="vert-tabs-prospect-tab">
                    <!-- Default box -->
                    <div class="row d-flex align-items-stretch">
                      <?php if(!empty($records)): foreach($records as $row): if($row['role_id'] == 3): ?>
                            <div class="col-12 col-sm-6 col-md-4 d-flex align-items-stretch">
                              <div class="card bg-light">
                                <div class="card-header text-muted border-bottom-0">
                                   <?php echo 'Prospect'; ?>
                                </div>
                                <div class="card-body pt-0">
                                  <div class="row">
                                    <div class="col-7">
                                      <h2 class="lead"><b><?php echo $row['client_name']; ?></b></h2>
                                      <!--<p class="text-muted text-sm"><b>About: </b> Web Designer / UX / Graphic Artist / Coffee Lover </p>-->
                                      <ul class="ml-4 mb-0 fa-ul text-muted">
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-building"></i></span> Address: Demo Street 123, Demo City 04312, NJ</li>
                                        <li class="small"><span class="fa-li"><i class="fas fa-lg fa-phone"></i></span> Phone #: + 800 - 12 12 23 52</li>
                                      </ul>
                                    </div>
                                    <div class="col-5 text-center">
                                      <img src="<?php echo base_url(); ?>uploads/client/<?php echo $row['client_image']; ?>" alt="" class="img-circle img-fluid">
                                    </div>
                                  </div>
                                </div>
                                <div class="card-footer">
                                  <div class="text-right">
                                    <span class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success"  style="display:inline">
                                      <input type="checkbox" class="custom-control-input" id="<?php echo $row['client_id']; ?>" <?php echo ($row['client_status'] == 1) ? 'checked' : ''; ?>>
                                      <label class="custom-control-label" for="<?php echo $row['client_id']; ?>"></label>
                                    </span>
                                    <a href="#" class="btn btn-sm bg-teal">
                                      <i class="fas fa-comments"></i>
                                    </a>
                                    <a href="<?php echo base_url('admin/profile/get_client_profile'); ?>/<?php echo $row['client_id']; ?>" class="btn btn-sm btn-primary">
                                      <i class="fas fa-user"></i> View Profile
                                    </a>
                                  </div>
                                </div>
                              </div>
                            </div>
                
                        <!-- /.card-footer -->
                      <!-- /.card -->
                
                    <?php endif; endforeach; endif; ?>
                    </div> 
                  </div>
                  <div class="tab-pane fade" id="vert-tabs-settings" role="tabpanel" aria-labelledby="vert-tabs-settings-tab">
                     Pellentesque vestibulum commodo nibh nec blandit. Maecenas neque magna, iaculis tempus turpis ac, ornare sodales tellus. Mauris eget blandit dolor. Quisque tincidunt venenatis vulputate. Morbi euismod molestie tristique. Vestibulum consectetur dolor a vestibulum pharetra. Donec interdum placerat urna nec pharetra. Etiam eget dapibus orci, eget aliquet urna. Nunc at consequat diam. Nunc et felis ut nisl commodo dignissim. In hac habitasse platea dictumst. Praesent imperdiet accumsan ex sit amet facilisis. 
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- /.card -->
        </div>
          </div>
          
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>