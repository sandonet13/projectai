<?php echo form_open(get_uri("add_material_request/save"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expense-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">
        <input type="hidden" name="id" value="<?php echo $model_info->id; ?>" />
        <div class=" form-group">
            <label for="date_request" class=" col-md-3"><?php echo lang('date_request'); ?></label>
            <div class="col-md-9">
                <?php
                echo form_input(array(
                    "id" => "date_request",
                    "name" => "date_request",
                    "value" => $model_info->date_request ? $model_info->date_request : get_my_local_time("Y-m-d"),
                    "class" => "form-control recurring_element",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>
        <div class="form-group">
            <label for="category_id" class=" col-md-3"><?php echo lang('category'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_dropdown("category_id", $categories_dropdown, $model_info->category_id, "class='select2 validate-hidden' id='category_id' data-rule-required='true', data-msg-required='" . lang('field_required') . "'");
                ?>
            </div>
        </div>
        
        <div class="form-group">
            <label for="location_id" class=" col-md-3"><?php echo lang('location'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_dropdown("location_id", $location_dropdown, $model_info->location_id, "class='select2 validate-hidden' id='location_id'");
                ?>
            </div>
        </div>

        <div class="form-group">
            <label for="expense_project_id" class=" col-md-3"><?php echo lang('project'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_dropdown("expense_project_id", $projects_dropdown, $model_info->project_id, "class='select2 validate-hidden' id='expense_project_id'");
                ?>
            </div>
        </div>

        <div class="form-group">
            <label for="expense_user_id" class=" col-md-3"><?php echo lang('team_member'); ?></label>
            <div class="col-md-9">
                <?php
                echo form_dropdown("expense_user_id", $members_dropdown, $model_info->user_id, "class='select2 validate-hidden' id='expense_user_id'");
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