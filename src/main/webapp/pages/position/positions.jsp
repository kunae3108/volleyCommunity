<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
table#positions th {
	text-align: center;
	vertical-align: middle;
}

table#positions td {
	text-align: center;
	vertical-align: middle;
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
				<th>Id.</th>
				<th>Code</th>
				<th>Position Name(En)</th>
				<th>Position Name(Th)</th>
				<th>Description</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${positions}" var="obj" varStatus="iter">
				<tr class="position-rowId-${obj.positionId}">
					<td>${obj.positionId}</td>
					<td>${obj.positionAcronym}</td>
					<td>${obj.positionNameEn}</td>
					<td>${obj.positionNameTh}</td>
					<td>${obj.positionDesc}</td>
					<td>
						<button class="btn btn-warning btn-sm"
							onclick="alert('Edit')"
							style=" margin:5px;">Edit</button>
						<button class="btn btn-danger btn-sm"
							onclick='deletePosition(${obj.positionId})'
							style=" margin:5px;">Delete</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>



	<jsp:include page="./addPositionModal.jsp" />
</div>

<script type="text/javascript">
	function deletePosition(id){

		if(confirm('Do you sure to delete '+$('tr.position-rowId-'+id+' td:nth-child(3)').text()+'?')){
			positionId = JSON.stringify(id);
			$.ajax({
				type : "POST",
				contentType : "application/json",
				url : "${pageContext.request.contextPath}/position/delete",
				data : positionId,
				dataType : "json",
				async : true,
				success : function(data) {
					alert(data.msg);
					$("tr.position-rowId-"+id).remove();
				},
				error : function(e) {
					console.log(e);
				}
			});
		}
	}
	
	function addVbPositionFormSubmit() {
		var positionAcronym = $("#positionAcronym").val();
		var positionNameEn = $("#positionNameEn").val();
		var positionNameTh = $("#positionNameTh").val();
		var positionDesc = $("#positionDesc").val();

		var objVb = {};
		objVb['positionAcronym'] = positionAcronym;
		objVb['positionNameEn'] = positionNameEn;
		objVb['positionNameTh'] = positionNameTh;
		objVb['positionDesc'] = positionDesc;

		vbPosition = JSON.stringify(objVb)
		
		$.ajax({
			type : "POST",
			contentType : "application/json",
			url : "${pageContext.request.contextPath}/position/add",
			data : vbPosition,
			dataType : 'json',
			async : true,
			success : function(data) {
				$('#addPosModal').modal('hide');
				if(data.code != "200"){
					alert(data.msg)
				}else{
					$('#addPosModal').modal('hide');
					$("#positions tbody").append(
							"<tr  class='position-rowId-"+data.result.positionId+"'>" 
									+ "<td>" + data.result.positionId + "</td>"
									+ "<td>" + data.result.positionAcronym + "</td>" 
									+ "<td>" + data.result.positionNameEn + "</td>" 
									+ "<td>" + data.result.positionNameTh + "</td>" 
									+ "<td>" + data.result.positionDesc + "</td>"
									+ "<td>"
										+ "<button class='btn btn-warning btn-sm' onclick='alert('Edit')' style=' margin:5px;'>Edit</button>"
										+ "<button class='btn btn-danger btn-sm' onclick='deletePosition("+ data.result.positionId +")' style=' margin:5px;'>Delete</button>"
									+ "</td>"
						 + "</tr>");
				}

			},
			error : function(e) {
				console.log(e);
			}
		});
	}
	
	$("#addPosModal").on("hide.bs.modal", function() {
		$("#vollcomm-form-section *").val('');
	});



</script>