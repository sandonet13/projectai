<?php var_dump($model_info) ?>
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
                        <li class="list-group-item"><strong>No. MR : <?php echo $model_info->mr_no ?></strong></li>
                        <li class="list-group-item"><strong>Location : <?php echo $location_dropdown[$model_info->location_id] ?></strong></li>
                        <li class="list-group-item"><strong>Category : <?php echo $categories_dropdown[$model_info->category_id] ?></strong></li>
                        <li class="list-group-item"><strong>Team Members : <?php echo $model_info->linked_user_name ?></strong></li>
                    </ul>
                </div>
                <div class="col-sm-6">
                    <ul class="list-group">
                        <li class="list-group-item">Notes : <?php echo $model_info->notes ?></li>
                        <li class="list-group-item">Status :
                            
                            <?php if($status_dropdown[$model_info->status_id] = "Created"): ?>
                            <span class="label label-primary">Created</span>
                            <?php elseif($status_dropdown[$model_info->status_id] = "Pending"): ?>
                            <span class="label label-warning">Pending</span>
                            <?php endif; ?>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>