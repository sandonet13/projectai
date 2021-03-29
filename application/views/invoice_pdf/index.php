<div id="page-content" class="clearfix p20">
    <div class="panel clearfix">
        <div class="page-title clearfix">
            <h1>Material Request</h1>
            <div class="title-button-group">
                <?php echo modal_anchor(get_uri("material/modal_form"), "<i class='fa fa-plus-circle'></i> " . "Add Material", array("class" => "btn btn-default", "title" => lang('add_note'))); ?>
            </div>
        </div>
        <div class="table-responsive">
            <table id="note-table" class="display" cellspacing="0" width="100%">
            </table>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function() {
        $("#note-table").appTable({
            source: '<?php echo_uri("material/list_data") ?>',
            order: [
                [2, 'desc']
            ],
            columns: [{
                    title: 'Description',
                    "class": "w200"
                },
                {
                    title: 'Specification'
                },
                {
                    title: 'Date Register'
                },
                {
                    title: 'No. MR'
                },
                {
                    title: 'qty',
                    "class": "w250"
                },
                {
                    title: 'Measurement',
                    "class": "w250"
                },
                {
                    title: 'Notes'
                },
                {
                    title: 'Status',
                },
                {
                    title: 'PO No.'
                },
                {
                    title: 'DO'
                },
                {
                    title: 'PO'
                },
                {
                    title: 'Invoice'
                },
                {
                    title: 'SP3'
                },
                {
                    title: 'Unit Price'
                },
				                {
                    title: 'Total Price'
                },
                {
                    title: 'Priority'
                },
                {
                    title: '<i class="fa fa-bars"></i>',
                    class: "text-center option w100"
                }
            ],
			printColumns: combineCustomFieldsColumns([0, 1, 2, 3, 4,5,6,7,8,9]),
            xlsColumns: combineCustomFieldsColumns([0, 1, 2, 3, 4,5,6,7,8,9])
        });
    });
</script>