<div id="page-content" class="clearfix p20">
    <div class="panel clearfix">
        <div class="page-title clearfix">
            <h1>Petty Cash</h1>
            <div class="title-button-group">
                    <?php echo modal_anchor(get_uri("pcash/modal_form"), "<i class='fa fa-plus-circle'></i> " . lang('add_pcash'), array("class" => "btn btn-default mb0", "title" => lang('add_pcash'))); ?>
            </div>
        </div>
<div class="dashboards-row clearfix row"><div class="widget-container col-md-4">
<div class="panel panel-sky">
    <a href="" class="white-link">
        <div class="panel-body ">
            <div class="widget-icon">
                <i class="fa fa-money"></i>
            </div>
            <div class="widget-details">
                <h3><?php echo $total_ai ?></h3>
                Audemars Building            </div>
        </div>
    </a>
</div></div><div class="widget-container col-md-4">
<div class="panel panel-primary">
    <a href="" class="white-link">
        <div class="panel-body ">
            <div class="widget-icon">
                <i class="fa fa-money"></i>
            </div>
            <div class="widget-details">
                <h3><?php echo $total_cibitung ?></h3>
                Cibitung Workshop            </div>
        </div>
    </a>
</div></div><div class="widget-container col-md-4">
    <div class="panel panel-info">
    <a href="" class="white-link">
        <div class="panel-body ">
            <div class="widget-icon">
                <i class="fa fa-money"></i>
            </div>
            <div class="widget-details">
                <h3><?php echo $total_field_langgak ?></h3>
                Field - Langgak            </div>
        </div>
    </a>
</div></div><div class="widget-container col-md-4">
    <div class="panel panel-success">
    <a href="" class="white-link">
        <div class="panel-body ">
            <div class="widget-icon">
                <i class="fa fa-money"></i>
            </div>
            <div class="widget-details">
                <h3><?php echo $total_field_phe ?></h3>
                Field - PHE            </div>
        </div>
    </a>
</div></div></div>
        
        <div class="table-responsive">
            <table id="note-table" class="display" cellspacing="0" width="100%">
            </table>
        </div>
</div>


<script type="text/javascript">
    $(document).ready(function() {
        $("#note-table").appTable({
            source: '<?php echo_uri("pcash/list_data") ?>',
            filterDropdown: [
                {name: "location_id", class: "w200", options: <?php echo $location_dropdown; ?>}
            ],
            order: [
                [1, 'desc']
            ],
            columns: [
                {
                    title: 'Date Time'
                },
                                {
                    title: 'Location'
                },
                {
                    title: 'Balance',
                },
                {
                    title: '<i class="fa fa-bars"></i>',
                    class: "text-center option w100"
                },
            ],
			printColumns: combineCustomFieldsColumns([0, 1]),
            xlsColumns: combineCustomFieldsColumns([0, 1]),
            summation: [{column: 2, dataType: 'currency'}]

        });
    });
</script>

