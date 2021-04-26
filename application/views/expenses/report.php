<?php echo form_open(get_uri("expenses/report"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expense-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">
        <input type="hidden" name="id" value="<?php echo $model_info->id; ?>" />
        <div class=" form-group">
            <label for="date_request" class=" col-md-3"><?php echo lang('date_request'); ?></label>
            <div class="col-md-9">
                <?php
                echo form_input(array(
                    "id" => "date_expense",
                    "name" => "date_expense",
                    "value" => "date_expense",
                    "class" => "form-control recurring_element",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
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
                if (typeof $ADD_ITEM_TABLE !== 'undefined') {
                    $ADD_ITEM_TABLE.appTable({newData: result.data, dataId: result.id});
                } else {
                    location.reload();
                }
            },

        });

        $("#expense-form .select2").select2();
        
        $('[data-toggle="tooltip"]').tooltip();

    });
</script>