<?php echo form_open(get_uri("pcash/save"), array("id" => "note-form", "class" => "general-form", "role" => "form")); ?>
<div id="notes-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">



        <div class="form-group">
            <div class="col-md-12">
                <select name="location" class="form-control">
                    <option value="" selected disabled></option>
                    <option value="Cibitung">Cibitung</option>
                    <option value="Audemars Building">Audemars Building</option>
					<option value="Field">Field</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "start_date",
                    "name" => "date_time",
                    "class" => "form-control",
                    'data-date-format' => 'yyyy-mm-dd',
                    "placeholder" => 'Date Time',
                    "value" => is_date_exists($model_info->title) ? $model_info->title : "",
                    "autocomplete" => "off",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "name" => "balance",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "Balance",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
        <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
    </div>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function() {
        $('#start_date').datepicker()
        var uploadUrl = "<?php echo get_uri("notes/upload_file"); ?>";
        var validationUri = "<?php echo get_uri("notes/validate_notes_file"); ?>";

        var dropzone = attachDropzoneWithForm("#notes-dropzone", uploadUrl, validationUri);

        $("#note-form").appForm({
            onSuccess: function(result) {
                $("#note-table").appTable({
                    newData: result.data,
                    dataId: result.id
                });
            }
        });

        $("#title").focus();

        $("#note_labels").select2({
            multiple: true,
            data: <?php echo json_encode($label_suggestions); ?>
        });



        //show/hide mark as public help message
        $("#mark_as_public").click(function() {
            if ($(this).is(":checked")) {
                $("#mark_as_public_help_message").removeClass("hide");
            } else {
                $("#mark_as_public_help_message").addClass("hide");
            }
        });
    });
</script>