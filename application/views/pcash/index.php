<div id="page-content" class="p20 clearfix">
    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1>Petty Cash</h1>
            <div class="title-button-group">
                <?php echo modal_anchor(get_uri("pcash/modal_form"), "<i class='fa fa-plus-circle'></i> " . "Add Petty Cash", array("class" => "btn btn-default", "title" => lang('add_note'))); ?>
            </div>
        </div>
        <div class="table-responsive">
            <table id="note-table" class="display" cellspacing="0" width="100%">
            </table>
        </div>
        <div class="table-responsive">
            <table id="note-table-1" class="display" cellspacing="0" width="100%">
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $("#note-table").appTable({
            source: '<?php echo_uri("pcash/list_data") ?>',
            order: [
                [1, 'desc']
            ],
            columns: [
                {
                    title: 'Location'
                },
                                {
                    title: 'Date Time'
                },
                {
                    title: 'Balance',
                },
                {
                    title: '<i class="fa fa-bars"></i>',
                    class: "text-center option w100"
                }
            ],
			printColumns: combineCustomFieldsColumns([0, 1]),
            xlsColumns: combineCustomFieldsColumns([0, 1]),
            summation: [{column: 2, dataType: 'currency'}]

        });
    });
</script>

    
<script type="text/javascript">
    $(document).ready(function() {
        $("#note-table-1").appTable({
            source: '<?php echo_uri("expenses/list_data") ?>/',
            order: [
                [1, 'desc']
            ],
            columns: [
                {
                    title: 'Date'
                },
                {
                    title: 'Category'
                },
                                {
                    title: 'Title'
                },
                                {
                    title: 'Description'
                },
                {
                    title: 'Files'
                },
                                {
                    title: 'Amount'
                },
                                {
                    title: 'Tax'
                },
                                                {
                    title: 'Total'
                },
                                                {
                    title: 'Status'
                },
                                                                {
                    title: 'Location'
                },
                
                {
                    title: '<i class="fa fa-bars"></i>',
                    class: "text-center option w100"
                }
            ],
			printColumns: combineCustomFieldsColumns([0, 1]),
            xlsColumns: combineCustomFieldsColumns([0, 1]),
            summation: [{column: 2, dataType: 'currency'}]

        });
    });
</script>