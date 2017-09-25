<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; UTF-8"
	pageEncoding="UTF-8"%>


<div class="modal fade" id="addPosModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">Add position</h4>
			</div>
			<div class="modal-body">
				<div id="vollcomm-form-section">

					<div class="container-fluid">
						<div class="row">
							<div class="col-sm-6">
								<input id="positionAcronym" type="text" name="posAcronym"
									class="form-control name-field" required="required"
									placeholder="Position Acronym" maxlength="3"/>
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<input id="positionNameEn" type="text" name="posNameEn"
									class="form-control" required="required"
									placeholder="Position Name(Eng)" />
							</div>
							<div class="col-sm-12">
								<input id="positionNameTh" type="text" name="posNameTh"
									class="form-control" required="required"
									placeholder="Position Name(Th)" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<textarea name="positionDesc" id="positionDesc" required="required"
									class="form-control" rows="8"
									placeholder="Describe about this position..."></textarea>
							</div>

						</div>
						<div class="row">
							<div class="col-sm-6" style="align:center;">
								<button type="submit" class="btn btn-primary"
									onclick="addVbPositionFormSubmit();">Send</button>
							</div>
							<div class="col-sm-6"  style="align:center;">
								<button class="btn btn-cancel "
									onclick="$('#addPosModal').modal('hide');">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
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
