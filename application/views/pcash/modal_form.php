<?php echo form_open(get_uri("pcash/save"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expenses-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_dropdown("location_id", $location_dropdown, $model_info->location_id, "class='select2 validate-hidden' id='location_id'");
                ?>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "date_time",
                    "name" => "date_time",
                    "class" => "form-control",
                    "value" => $model_info->date_time ? $model_info->date_time : get_my_local_time("Y-m-d"),
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
                    "value" => $model_info->balance,
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
        <div class="row">
            <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
            <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
        </div>
    </div>
</div>
<?php echo form_close(); ?>

<script type="text/javascript">
    $(document).ready(function() {

        $("#expense-form").appForm({
            onSuccess: function (result) {
                if (typeof $PCASH_TABLE !== 'undefined') {
                    $PCASH_TABLE.appTable({newData: result.data, dataId: result.id});
                } else {
                    location.reload();
                }
            },
        });

        setDatePicker("#date_time");

        $("#expense-form .select2").select2();
        
        $('[data-toggle="tooltip"]').tooltip();



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