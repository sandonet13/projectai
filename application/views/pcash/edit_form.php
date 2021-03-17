<?php echo form_open_multipart(get_uri("pcash/edit"), array("id" => "note-form", "class" => "general-form", "role" => "form")); ?>
<div id="notes-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">

        <input type="hidden" name="id" value="<?php echo $model_info->id ?>">


        <div class="form-group">
            <div class="col-md-12">
                <select name="location" class="form-control">
                    <option value="" <?php print (!$model_info->location) == '' ? 'selected' : '' ?>></option>
                    <option value="Cibitung" <?php print ($model_info->location) == 'Cibitung' ? 'selected' : '' ?>>Cibitung</option>
                    <option value="Audemars Building" <?php print ($model_info->location) == 'Audemars Building' ? 'selected' : '' ?>>Audemars Building</option>
                    <option value="Field" <?php print ($model_info->location) == 'Field' ? 'selected' : '' ?>>Field</option>
                </select>
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-12">
                <?php
                echo form_input(array(
                    "id" => "date_time",
                    "name" => "date_time",
                    'data-date-format' => 'yyyy-mm-dd',
                    "class" => "form-control",
                    "value" => is_date_exists($model_info->date_time) ? $model_info->date_time : "",
                    "placeholder" => "Date Time",
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
                    "class" => "form-control notepad-title",
                    "placeholder" => "Balance",
                    "data-rule-required" => true,
                    "data-msg-required" => lang("field_required"),
                ));
                ?>
            </div>
        </div>

    </div>

    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>
        <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>
    </div>
</div>
<?php echo form_close(); ?>
<script type="text/javascript">
    $(document).ready(function() {

        $('#start_date1').datepicker()
    });
</script>