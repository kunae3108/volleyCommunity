<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
					<input id="posAcronym" type="text" name="posAcronym" class="form-control name-field" required="required"
						placeholder="Position Acronym" /> 
					<input id="posFullname" type="text" name="posFullname" class="form-control mail-field"
						required="required" placeholder="Position Name" />
					<textarea name="posDesc" id="posDesc" required="required"
						class="form-control" rows="8"
						placeholder="Describe about this position..."></textarea>
					<button type="submit" class="btn btn-primary"
						onclick="addVbPositionFormSubmit();">Send</button>
					<button class="btn btn-cancel "
						onclick="$('#addPosModal').modal('hide');">Close</button>
				</div>
			</div>
		</div>
	</div>
</div>

