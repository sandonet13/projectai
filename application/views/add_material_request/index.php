<?php echo form_open(get_uri("add_material_request/save"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expense-dropzone" class="clearfix p21">
            <div class="panel">
                <div class="panel-default panel-heading">
                    <h4><?php echo lang("add_material_request"); ?></h4></br></br>
                                        <span class="fa fa-plus-circle"></span><a data-toggle="collapse" href="#form"> Add Material Request</a>
                </div>
                <div class="panel-body">
        <div id="form" class="panel-collapse collapse">
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
                            // "disabled" => true,
                        ));
                        ?>
                    </div>
                    
                </div>
                <div class="form-group">
                    <label for="category_id" class=" col-md-3"><?php echo lang('category'); ?></label>
                    <div class=" col-md-9">
                    <?php
                    echo form_dropdown("category_id", $categories_add_dropdown, $model_info->category_id, "class='select2 validate-hidden' id='category_id' data-rule-required='true', data-msg-required='" . lang('field_required') . "'");
                    ?>
                    </div>
                </div>
                <div class="form-group">
                <label for="location_id" class=" col-md-3"><?php echo lang('location'); ?></label>
                    <div class=" col-md-9">
                    <?php
                    echo form_dropdown("location_id", $location_add_dropdown, $model_info->location_id, "class='select2 validate-hidden' id='location_id'");
                    ?>
                    </div>
                </div>
                <div class="form-group">
                <label for="expense_project_id" class=" col-md-3"><?php echo lang('project'); ?></label>
                    <div class=" col-md-9">
                    <?php
                    echo form_dropdown("expense_project_id", $projects_add_dropdown, $model_info->project_id, "class='select2 validate-hidden' id='expense_project_id'");
                    ?>
                </div>
                </div>
                <div class="form-group">
                <label for="expense_user_id" class=" col-md-3"><?php echo lang('team_member'); ?></label>
                    <div class="col-md-9">
                    <?php
                    echo form_dropdown("expense_user_id", $members_add_dropdown, $model_info->user_id, "class='select2 validate-hidden' id='expense_user_id'");
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
                      "data-rule-required" => false,
                      "data-msg-required" => lang("field_required"),
                     ));
                      ?>
                    </div>
                </div>
        <div class="modal-footer">
        <div class="row">
            <!--<button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>-->
            <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('submit'); ?></button>
        </div>
    </div>
                </div>
                </div>
            </div>
            
    </div>
    <?php echo form_close(); ?>


<div id="page-content" class="clearfix p20">
    <div class="panel clearfix">
        <ul id="expenses-tabs" data-toggle="ajax-tab" class="nav nav-tabs bg-white title" role="tablist">
            <!--<li class="title-tab"><h4 class="pl15 pt10 pr15"><?php echo lang("add_material_request"); ?></h4></li>-->
            <li><a id="monthly-expenses-button"  role="presentation" class="active" href="javascript:;" data-target="#monthly-expenses"></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <!--<div class="tab-title clearfix no-border">-->
            <!--    <div class="title-button-group">-->
            <!--        <?php echo modal_anchor(get_uri("add_material_request/modal_form"), "<i class='fa fa-plus-circle'></i> " . lang('add_add_material_request'), array("class" => "btn btn-default mb0", "title" => lang('add_add_material_request'))); ?>-->
            <!--    </div>-->
            <!--</div>-->
        </ul>
        
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade" id="monthly-expenses">
                <div class="table-responsive">
                    <table id="monthly-expense-table" class="display" cellspacing="0" width="100%">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    loadExpensesTable = function (selector) {

        $(selector).appTable({
            source: '<?php echo_uri("add_material_request/list_data") ?>/',
            //dateRangeType: dateRange,
            filterDropdown: [
                //{name: "category_id", class: "w200", options: <?php echo $categories_dropdown; ?>},
                //{name: "location_id", class: "w200", options: <?php echo $location_dropdown; ?>},
                {name: "user_id", class: "w200", options: <?php echo $members_dropdown; ?>},
                <?php if ($projects_dropdown) { ?>
                    {name: "project_id", class: "w200", options: <?php echo $projects_dropdown; ?>}
                <?php } ?>
            ],
            order: [[1, "asc"]],
            //rangeDatepicker: customDatePicker,
            columns: [
                {visible: false, searchable: false},
                {title: '<?php echo lang("date") ?>'},
                {title: '<?php echo lang("mr_no") ?>'},
                {title: '<?php echo lang("project") ?>'},
                {title: '<?php echo lang("category") ?>'},
                {title: '<?php echo lang("location") ?>'},
                {title: '<?php echo lang("team") ?>'},
                {title: '<?php echo lang("notes") ?>'},
                {title: '<?php echo lang("status_mr") ?>'},
                {title: 'Add Item'}
            ],
            //printColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            //xlsColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            //summation: [{column: 8, dataType: 'currency'}, {column: 10, dataType: 'currency'}]
        });
    };

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
        
        setDatePicker("#date_request");

        $("#expense-form .select2").select2();
        
        $('[data-toggle="tooltip"]').tooltip();
        
        loadExpensesTable("#monthly-expense-table", "monthly");
    });
</script>


