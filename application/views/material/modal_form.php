<?php echo form_open_multipart(get_uri("material/save"), array("id" => "note-form", "class" => "general-form", "role" => "form")); ?>
<div id="notes-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">



        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "start_date",
                    "name" => "mr_date_register",
                    "class" => "form-control",
                    'data-date-format' => 'yyyy-mm-dd',
                    "placeholder" => 'Date Register',
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
                    "name" => "no_mr_asset",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "No. MR",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <div class="">
                    <textarea placeholder="Description" name="item_description" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"></textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <div class="">
                    <textarea placeholder="Specification" name="specification" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"></textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "data",
                    "name" => "qty",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "Quantity",
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
                    "id" => "data",
                    "name" => "measurement",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "Measurement",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <div class="">
                    <textarea placeholder="Notes" name="notes" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"></textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <select name="status" class="form-control">
                    <option value=""></option>
                    <option value="Created">Created</option>
                    <option value="Pending">Pending</option>
					<option value="Approved">Approved</option>
					<option value="MR Void">MR Void</option>
                    <option value="PO Created">PO Created</option>
					<option value="PO Approved">PO Approved</option>
                    <option value="Paid">Paid</option>
					<option value="Delivered">Delivered</option>
                    <option value="Completed">Completed</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "data",
                    "name" => "po_no",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "PO No.",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">Do</div>
            <div class="col-md-12">
                <input type="file" name="do" placeholder="do" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">Po</div>
            <div class="col-md-12">
                <input type="file" name="po" placeholder="PO" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">Invoice</div>
            <div class="col-md-12">
                <input type="file" name="invoice" placeholder="Invoice" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">Sp3</div>
            <div class="col-md-12">
                <input type="file" name="sp3" placeholder="Invoice" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "data",
                    "name" => "unit_price",
                    "value" => $model_info->title,
                    "class" => "form-control",
                    "placeholder" => "Unit Price",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <select name="priority" class="form-control">
                    <option value="" selected disabled>Priority</option>
                    <option value="High">High</option>
                    <option value="Medium">Medium</option>
                    <option value="Low">Low</option>
                </select>
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