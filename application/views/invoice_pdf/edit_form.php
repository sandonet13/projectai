<?php echo form_open_multipart(get_uri("material/edit"), array("id" => "note-form", "class" => "general-form", "role" => "form")); ?>
<div id="notes-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">

        <input type="hidden" name="id_asset_req" value="<?php echo $model_info->id_asset_req ?>">


        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "start_date1",
                    "name" => "mr_date_register",
                    'data-date-format' => 'yyyy-mm-dd',
                    "class" => "form-control",
                    "value" => is_date_exists($model_info->mr_date_register) ? $model_info->mr_date_register : "",
                    "placeholder" => "mr_data_register",
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
                    "value" => $model_info->no_mr_asset,
                    "class" => "form-control notepad-title",
                    "placeholder" => "no_mr_asset",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <div class="">
                    <textarea placeholder="Description" name="item_description" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"> <?php echo $model_info->item_description ?> </textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <div class="">
                    <textarea placeholder="Specification" name="specification" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"><?php echo $model_info->specification ?></textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "data",
                    "name" => "qty",
                    "value" => $model_info->qty,
                    "class" => "form-control notepad-title",
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
                    "value" => $model_info->measurement,
                    "class" => "form-control notepad-title",
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
                    <textarea placeholder="Notes" name="notes" style="height: 80px !important;" class="form-control" id="" cols="10" rows="10"><?php echo $model_info->notes ?></textarea>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <select name="status" class="form-control">
                    <option value="" <?php print (!$model_info->status) == '' ? 'selected' : '' ?>></option>
                    <option value="Created" <?php print ($model_info->status) == 'Created' ? 'selected' : '' ?>>Created</option>
                    <option value="Pending" <?php print ($model_info->status) == 'Pending' ? 'selected' : '' ?>>Pending</option>
                    <option value="Approved" <?php print ($model_info->status) == 'Approved' ? 'selected' : '' ?>>Approved</option>
					<option value="MR Void" <?php print ($model_info->status) == 'MR Void' ? 'selected' : '' ?>>MR Void</option>
                    <option value="PO Created" <?php print ($model_info->status) == 'PO Created' ? 'selected' : '' ?>>PO Created</option>
					<option value="PO Approved" <?php print ($model_info->status) == 'PO Approved' ? 'selected' : '' ?>>PO Approved</option>
                    <option value="Paid" <?php print ($model_info->status) == 'Paid' ? 'selected' : '' ?>>Paid</option>
					<option value="Delivered" <?php print ($model_info->status) == 'Delivered' ? 'selected' : '' ?>>Delivered</option>
                    <option value="Completed" <?php print ($model_info->status) == 'Completed' ? 'selected' : '' ?>>Completed</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "data",
                    "name" => "po_no",
                    "value" => $model_info->po_no,
                    "class" => "form-control notepad-title",
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
                    "value" => $model_info->unit_price,
                    "class" => "form-control notepad-title",
                    "placeholder" => "Unit Price",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <?php ($model_info->priority == 'High') ? 'Asiapp' : 'nonon'; ?>
            <div class="col-md-12">

                <select name="priority" class="form-control">
                    <option value="" <?php print (!$model_info->priority) ? 'selected' : '' ?> disabled>Priority</option>
                    <option value="High" <?php print ($model_info->priority == 'High') ? 'selected' : '' ?>>High</option>
                    <option value="Medium" <?php print ($model_info->priority == 'Medium') ? 'selected' : '' ?>>Medium</option>
                    <option value="Low" <?php print ($model_info->priority == 'Low') ? 'selected' : '' ?>>Low</option>
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

        $('#start_date1').datepicker()
    });
</script>