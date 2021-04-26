

<?php echo form_open(get_uri("add_material_request/save_item_modal"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expense-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">
        <input type="hidden" name="id" value="<?php echo $model_info->id; ?>" />
        <div class="form-group" hidden>
            <label for="mr_no" class=" col-md-3"><?php echo lang('mr_no'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "mr_no",
                    "name" => "mr_no",
                    "value" => $model_info->mr_no,
                    "class" => "form-control",
                    "placeholder" => lang('mr_no'),
                    //"autofocus" => true,
                    //"data-rich-text-editor" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="item_name" class=" col-md-3"><?php echo lang('item_name'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "item_name",
                    "name" => "item_name",
                    "value" => $model_info->item_name,
                    "class" => "form-control",
                    "placeholder" => lang('item_name'),
                    //"autofocus" => true,
                    //"data-rich-text-editor" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="specification" class=" col-md-3"><?php echo lang('specification'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "specification",
                    "name" => "specification",
                    "value" => $model_info->specification,
                    "class" => "form-control",
                    "placeholder" => lang('specification'),
                    //"autofocus" => true,
                    //"data-rich-text-editor" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        
        <div class="form-group">
            <label for="measurement" class=" col-md-3"><?php echo lang('measurement'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "measurement",
                    "name" => "measurement",
                    "value" => $model_info->measurement,
                    "class" => "form-control",
                    "placeholder" => lang('measurement'),
                    //"autofocus" => true,
                    //"data-rich-text-editor" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="qty" class=" col-md-3"><?php echo lang('qty'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "qty",
                    "name" => "qty",
                    "value" => $model_info->qty,
                    "class" => "form-control",
                    "placeholder" => lang('qty'),
                    //"autofocus" => true,
                    //"data-rich-text-editor" => true,
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="notes" class=" col-md-3"><?php echo lang('notes'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_textarea(array(
                    "id" => "notes",
                    "name" => "notes",
                    "value" => $model_info->notes,
                    "class" => "form-control",
                    "placeholder" => lang('notes'),
                    //"autofocus" => true,
                    "data-rich-text-editor" => true,
                    // "data-rule-required" => true,
                    // "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        
        


    </div>

    <div class="modal-footer">
        <div class="row">
\            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
            <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
        </div>
    </div>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function () {


        $("#expense-form").appForm({
            onSuccess: function (result) {
                if (typeof $ADD_MATERIAL_REQUEST_TABLE !== 'undefined') {
                    $ADD_MATERIAL_REQUEST_TABLE.appTable({newData: result.data, dataId: result.id});
                } else {
                    location.reload();
                }
            },

        });

        $("#expense-form .select2").select2();
        
        $('[data-toggle="tooltip"]').tooltip();

    });
</script>