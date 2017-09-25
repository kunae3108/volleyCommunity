<%@ page language="java" contentType="text/html; UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style type="text/css">
table#positions th {
	text-align: center;
}
table#positions td {
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
				<th>Pos. Name(En)</th>
				<th>Pos. Name(Th)</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${positions}" var="obj"  varStatus="iter">
				<tr>
					<td>${obj.positionId}</td>
					<td>${obj.positionAcronym}</td>
					<td>${obj.positionNameEn}</td>
					<td>${obj.positionNameTh}</td>
					<td>${obj.positionDesc}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>



	<jsp:include page="./addPositionModal.jsp" />
</div>
