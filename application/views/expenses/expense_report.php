<div id="expense-dropzone" class="post-dropzone">
    <div class="modal-body clearfix">


<div class="form-group">
    <?php
    
    
    echo form_open('expenses/report_form');
    echo "<label class=' col-md-3'>Months</label>";
    $data = array(
    'format' => 'mm',
    'type' => 'date',
    'name' => 'date',
    'placeholder' => 'mm'
    );
    echo "<div class='col-md-9'>";
    echo form_input($data);
    echo "<div class='error_msg'>";
    if (isset($date_error_message)) {
    echo $date_error_message;
    }
    

    echo "</div>";
    echo form_submit('submit', 'Export PDF',"class='btn btn-danger'");
    echo form_close();
    echo "</div>";
    
    ?>
    
    <!--<div class="modal-footer">-->
    <!--    <div class="row">-->
    <!--        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="fa fa-close"></span> <?php echo lang('close'); ?></button>-->
    <!--        <button type="submit" class="btn btn-primary"><span class="fa fa-check-circle"></span> <?php echo lang('save'); ?></button>-->
    <!--    </div>-->
    <!--</div>-->
    
<div class="message">
<?php
if (isset($result_display)) {
echo "<p><u>Result</u></p>";
if ($result_display == 'No record found !') {
echo $result_display;
} else {
echo "<table class='result_table'>";
echo '<tr><th>Employee ID</th><th>Employee Name</th><th>Joining Date</th><th>Address</th><th>Mobile</th><tr/>';
foreach ($result_display as $value) {
echo '<tr>' . '<td class="e_id">' . $value->id . '</td>' . '<td>' . $value->expense_date . '</td>' . '<td class="j_date">' . $value->category_id . '</td>' . '<td>' . $value->description . '</td>' . '<td class="mob">' . $value->amount . '</td>' . '<tr/>';
}
echo '</table>';
}
}
?>

</div>
</div>
