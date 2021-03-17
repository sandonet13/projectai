<div id="page-content" class="p20 clearfix">
    <div class="panel panel-default">
        <div class="page-title clearfix">
            <h1><?php echo lang('team_members'); ?></h1>
            <div class="title-button-group">
                <div class="btn-group" role="group">
                    <button type="button" class="btn btn-default btn-sm active mr-1"  title="<?php echo lang('list_view'); ?>"><i class="fa fa-bars"></i></button>
                    <?php echo anchor(get_uri("team_members/view"), "<i class='fa fa-th-large'></i>", array("class" => "btn btn-default btn-sm")); ?>
                </div>

            </div>
        </div>
        <div class="table-responsive">
            <table id="team_member-table" class="display" cellspacing="0" width="100%">            
            </table>
        </div>
    </div>
</div>