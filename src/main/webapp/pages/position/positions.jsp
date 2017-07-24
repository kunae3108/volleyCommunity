<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
table#positions th {
	text-align: center;
}
</style>
<div class='container-fluid'>
	<div class="row"></div>
	<h1>
		Position <small>List</small>
	</h1>

	<button type="button" class="btn btn-primary btn-lg"
		data-toggle="modal" data-target="#addPosModal" style="float: right;">
		Add Position</button>

</div>
<div class="table-responsive">
	<i class="fa fa-file-code-o"></i>
	<table class="table table-striped" id="positions">
		<thead>
			<tr>
				<th>No.</th>
				<th>Code</th>
				<th>Name</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>



	<jsp:include page="./addPositionModal.jsp" />
</div>

<script type="text/javascript">
	function addVbPositionFormSubmit() {
		var posFullname = $("#posFullname").val();
		var posAcronym = $("#posAcronym").val();
		var posDesc = $("#posDesc").val();
		
		var objVb = {};
		objVb['posAcronym'] = posAcronym;
		objVb['posFullname'] = posFullname;
		objVb['posDesc'] = posDesc;
		
		vbPosition = JSON.stringify(objVb)
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "${pageContext.request.contextPath}/position/addVbPosition",
			data : vbPosition,
			dataType : 'json',
			cache : false,
			timeout : 600000,
			success : function(data) {
				console.log(data);

			},
			error : function(e) {
				console.log(e);

			}
		});
	}
</script>