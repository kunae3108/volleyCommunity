<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
	table#playerTable th{
		text-align: center;
	}


</style>

<section class="content-header">
  <h1>
     Players
    <small>player statistics table</small>
  </h1>
</section>
<section class="content">
  <div class="row">
    <div class="col-xs-12">
      <div class="box">
        <div class="box-header">
          <h3 class="box-title">Player statistics data table</h3>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
          <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
          <div class="row">
	          <div class="col-sm-6">
		          <div class="dataTables_length" >
			          <label>Show 
				          <select name="example1_length" aria-controls="example1" class="form-control input-sm">
				          <option value="10">10</option>
				          <option value="25">25</option>
				          <option value="50">50</option>
				          <option value="100">100</option>
				          </select> 
				          entries
			          </label>
		          </div>
	          </div>
	          <div class="col-sm-6">
		          <div id="example1_filter" class="dataTables_filter">
		          	<label style="float:right;">Search:<input type="search" class="form-control input-sm" placeholder="" aria-controls="example1"></label>
		          </div>
	          </div>
          </div>
          <div class="row">
          <div class="col-sm-12">
          <table id="playerTable" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
            <thead>
	            <tr role="row">
	            	<th style="width:30px;">No.</th>
	            	<th style="width:200px;">Name</th>
	            	<th style="width:80px;">Position</th>
	            	<th style="width:30px;">Age</th>
	            	<th style="width:30px;">Height</th>
	            	<th style="width:150px;"></th>
	        	</tr>
            </thead>
            <tbody>
            
            <tr role="row" class="odd">
            </tr>
            
            </tbody>
            <tfoot>
            	<tr>
	            	<th>No.</th>
	            	<th>Name</th>
	            	<th>Position</th>
	            	<th>Age</th>
	            	<th>Height</th>
	            	<th></th>
            	</tr>
            </tfoot>
          </table>
          </div>
          </div>
          <div class="row">
          <div class="col-sm-5">
          <div class="dataTables_info" id="example1_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div>
          </div>
          <div class="col-sm-7"><div class="dataTables_paginate paging_simple_numbers" id="example1_paginate"><ul class="pagination">
          <li class="paginate_button previous disabled" id="example1_previous"><a href="#" aria-controls="example1" data-dt-idx="0" tabindex="0">Previous</a></li>
          <li class="paginate_button active"><a href="#" aria-controls="example1" data-dt-idx="1" tabindex="0">1</a></li>
          <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="2" tabindex="0">2</a></li>
          <li class="paginate_button ">
          <a href="#" aria-controls="example1" data-dt-idx="3" tabindex="0">3</a></li>
          <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="4" tabindex="0">4</a></li>
          <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="5" tabindex="0">5</a></li>
          <li class="paginate_button "><a href="#" aria-controls="example1" data-dt-idx="6" tabindex="0">6</a></li>
          <li class="paginate_button next" id="example1_next"><a href="#" aria-controls="example1" data-dt-idx="7" tabindex="0">Next</a></li>
          </ul>
          </div>
          </div>
          </div>
          </div>
        </div>
        <!-- /.box-body -->
      </div>
      <!-- /.box -->
    </div>
    <!-- /.col -->
  </div>
  <!-- /.row -->
</section>
