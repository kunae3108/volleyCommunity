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
									placeholder="Position Acronym" maxlength="3" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<input id="positionNameEn" type="text" name="posNameEn"
									class="form-control" required="required" maxlength="40"
									placeholder="Position Name(Eng)" />
							</div>
							<div class="col-sm-12">
								<input id="positionNameTh" type="text" name="posNameTh"
									class="form-control" required="required" maxlength="40"
									placeholder="Position Name(Th)" />
							</div>
						</div>
						<div class="row">
							<div class="col-sm-12">
								<textarea name="positionDesc" id="positionDesc"
									required="required" class="form-control" rows="8"
									placeholder="Describe about this position..."></textarea>
							</div>

						</div>
						<div class="row">
							<div class="col-sm-12" style="text-align: right;">
								<button type="submit" class="btn btn-primary btn-lg" style="margin-top: 15px;"
									onclick="addVbPositionFormSubmit();">Send</button>
								<button class="btn btn-cancel btn-lg"
									onclick="$('#addPosModal').modal('hide');" style="margin-left: 20px; margin-top: 15px;">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">

	
</script>
