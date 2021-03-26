<div class="panel">
    <div class="tab-title clearfix">
        <h4><?php echo lang('expenses'); ?></h4>
        <div class="title-button-group">
            <?php echo modal_anchor(get_uri("expenses/modal_form"), "<i class='fa fa-plus-circle'></i> " . lang('add_expense'), array("class" => "btn btn-default mb0", "title" => lang('add_expense'), "data-post-project_id" => $project_id)); ?>
        </div>
    </div>
    <div class="table-responsive">
        <table id="expense-table" class="display" cellspacing="0" width="100%">
        </table>
    </div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        $EXPENSE_TABLE = $("#expense-table");

        $EXPENSE_TABLE.appTable({
            source: '<?php echo_uri("expenses/list_data/") ?>',
            filterParams: {project_id: "<?php echo $project_id; ?>"},
            order: [[0, "asc"]],
            columns: [
                {visible: false, searchable: false},
                {title: '<?php echo lang("date") ?>', "iDataSort": 0},
                {title: '<?php echo lang("category") ?>'},
                {title: '<?php echo lang("location") ?>'},
                {title: '<?php echo lang("measurement") ?>'},
                {title: '<?php echo lang("title") ?>'},
                {title: '<?php echo lang("description") ?>'},
                {title: '<?php echo lang("files") ?>'},
                {title: '<?php echo lang("amount") ?>', "class": "text-right"},
                {title: '<?php echo lang("qty") ?>', "class": "text-right"},
                {title: '<?php echo lang("total") ?>', "class": "text-right"},
                {title: '<i class="fa fa-bars"></i>', "class": "text-center option w100"}
            ],
            printColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            xlsColumns: [1, 2, 3, 4, 6, 7, 8, 9],
            summation: [{column: 8, dataType: 'currency'}, {column: 10, dataType: 'currency'}]
        });
    });
</script>