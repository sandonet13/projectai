<div id="item_mr" class="clearfix p20">
    <div class="panel">
        <div class="panel-default panel-heading">
            <h4><?php echo lang("add_item_mr"); ?></h4>
        </div>
                    
        <div class="panel-body">
            <div class="row">
                <div class="col-sm-6">
                    <ul class="list-group">
                        <li class="list-group-item"><strong>Date of Request : <?php echo $model_info->date_request ?></strong></li>
                        <li class="list-group-item"><strong>No. MR : MR2021-<?php echo $model_info->mr_no ?></strong></li>
                        <li class="list-group-item"><strong>Location : <?php echo $location_dropdown[$model_info->location_id] ?></strong></li>
                        <li class="list-group-item"><strong>Category : <?php echo $categories_dropdown[$model_info->category_id] ?></strong></li>
                        <li class="list-group-item"><strong>Team Members : <?php echo $model_info->linked_user_name ?></strong></li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <ul class="list-group">
                        <li class="list-group-item">Notes : <?php echo $model_info->notes ?></li>
                        <li class="list-group-item">Status : 
                        
                        <?php 
                             if ($model_info->status_id == 1) { 
                                 echo "<span class='label label-primary'>" . $status_warna[$model_info->status_id] . "</span>";
                             } if ($model_info->status_id == 2)
                             { 
                                 echo "<span class='label label-warning'>" . $status_warna[$model_info->status_id] . "</span>";
                             } if ($model_info->status_id == 3)
                             { 
                                 echo "<span class='label label-success'>" . $status_warna[$model_info->status_id] . "</span>";
                             }if ($model_info->status_id == 5)
                             { 
                                 echo "<span class='label label-danger'>" . $status_warna[$model_info->status_id] . "</span>";
                             }
                        
                        ?>
                        
                        </li>
                        
                        <li class="list-group-item">
                        <?php
                             if ($model_info->status_id == 2) { 
                                 echo "<input type='button' name='btn' value='Submit MR' class='btn btn-primary' id='submitBtn' data-toggle='modal' data-target='#confirm-submit' class='btn btn-default' />";
                            }
                            if ($login_id == 12 && $model_info->status_id == 1) { 
                                 echo "<input type='button' name='btn' value='Approve MR' class='btn btn-primary' id='submitBtn' data-toggle='modal' data-target='#confirm-approve' class='btn btn-default' />    ";
                                 echo "<input type='button' name='btn' value='Reject MR' class='btn btn-danger' id='submitBtn' data-toggle='modal' data-target='#confirm-reject' class='btn btn-default' />";

                            }if ($model_info->status_id == 3 || $model_info->status_id == 5) { 
                                // echo "<div class='p-3 mb-2 bg-info text-white' style='width:145px;'>MR has been " . $status_warna[$model_info->status_id] ."</div>";
                            }
                            if ($login_id == 17) { 
                                 echo "<input type='button' name='btn' value='Add PO' class='btn btn-primary' id='submitBtn' data-toggle='modal' data-target='#confirm-po' class='btn btn-default' />    ";
                                 echo "<input type='button' name='btn' value='Void MR' class='btn btn-danger' id='submitBtn' data-toggle='modal' data-target='#confirm-void' class='btn btn-default' />";
                            }
                        
                        ?>
                        </li>
                    </ul>
                </div>
            </div>


<div class="modal fade" id="confirm-submit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Confirm Submit</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to submit the following details? </br></br><strong><p class="bg-danger"></p>This action cannot be edited anymore, please make sure the item details has been inputed correctly.</p></strong>



            </div>

            <div class="modal-footer">
                <div class="row">
                    <button type="button" class="btn btn- col col-md-3" data-dismiss="modal">Cancel</button>
                <form method="post">
                                <button type="submit" value="addmr" name="addmr" class="btn btn-primary"><span class="fa fa-check-circle"></span> Submit MR</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirm-approve" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Confirm Approve</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to approve the following MR? </br></br><strong><p class="bg-danger"></p>This action cannot be undo, please make sure the MR details is correctly.</p></strong>



            </div>

            <div class="modal-footer">
                <div class="row">
                    <button type="button" class="btn btn- col col-md-3" data-dismiss="modal">Cancel</button>
                <form method="post">
                                <button type="submit" value="apprmr" name="apprmr" class="btn btn-primary"><span class="fa fa-check-circle"></span> Approve MR</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="confirm-reject" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h4>Confirm Reject</h4>
            </div>
            <div class="modal-body">
                Are you sure you want to reject the following MR? </br></br><strong><p class="bg-danger"></p>This action cannot be undo, please make sure you want to reject this MR.</p></strong>



            </div>

            <div class="modal-footer">
                <div class="row">
                    <button type="button" class="btn btn- col col-md-3" data-dismiss="modal">Cancel</button>
                <form method="post">
                                <button type="submit" value="rjcmr" name="rjcmr" class="btn btn-danger"><span class="fa fa-check-circle"></span> Reject MR</button>
                </form>
                </div>
            </div>
        </div>
    </div>
</div>


<?php echo form_open(get_uri("add_material_request/save_item"), array("id" => "expense-form", "class" => "general-form", "role" => "form")); ?>
<div id="expense-dropzone" class="clearfix p20" <?php if ($model_info->status_id != 2) {echo 'hidden';}?> >
            <div class="panel">
                <div class="panel-default panel-heading">
                                        <span class="fa fa-plus-circle"></span><a data-toggle="collapse" href="#form"> Add Item</a>
                </div>
                <div class="panel-body">
        <div id="form" class="panel-collapse collapse">
                <input type="hidden" name="id" value="<?php echo $model_item_info->id; ?>" />   
                <div class="form-group">
            <label for="item_name" class=" col-md-3"><?php echo lang('item_name'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "item_name",
                    "name" => "item_name",
                    "value" => $model_item_info->item_name,
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
            <label for="specification" class=" col-md-3"><?php echo lang('specification'); ?></label>
            <div class=" col-md-9">
                <?php
                echo form_input(array(
                    "id" => "specification",
                    "name" => "specification",
                    "value" => $model_item_info->specification,
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
                    "value" => $model_item_info->qty,
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
                    "value" => $model_item_info->qty,
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
                    "value" => $model_item_info->notes,
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
                    </div>

        </div>
    </div>
    <?php echo form_close(); ?>

<div id="expense-dropzone" class="clearfix p21">
            <div class="panel">
                <div class="table-responsive">
                    <table id="monthly-expense-table" class="display" cellspacing="0" width="100%"></table>
                </div>
            </div>
</div>


  <script type="text/javascript">
    loadExpensesTable = function (selector) {
        
       var t = $(selector).appTable({
            source: '<?php echo_uri("add_material_request/list_data_item/$model_info->id") ?>/',
            
            order: [[1, "asc"]],
            columnDefs: [ {
            "searchable": false,
            "orderable": false,
            "targets": 0
        } ],
            columns: [
                //{visible: true, searchable: false},
                // {title: ''},
                {title: '<?php echo lang("mr_no") ?>'},
                {title: '<?php echo lang("item_name") ?>'},
                {title: '<?php echo lang("specification") ?>'},
                {title: '<?php echo lang("qty") ?>'},
                {title: '<?php echo lang("measurement") ?>'},
                {title: '<?php echo lang("notes") ?>'},
                {title: '<i class="fa fa-bars"></i>', "class": "text-center option w100"}

                
            ],
            printColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            xlsColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            //summation: [{column: 8, dataType: 'currency'}, {column: 10, dataType: 'currency'}]
            
        });
            
    };

    $(document).ready(function () {
        
        setDatePicker("#date_request");

        $("#expense-form .select2").select2();
        
        $('[data-toggle="tooltip"]').tooltip();
        
        loadExpensesTable("#monthly-expense-table", "monthly");
        

    });
</script>