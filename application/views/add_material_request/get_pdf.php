<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
<body>
        <table id="customers">
        <?php 
            // echo '<table class="table-ai">';
                    echo '<tr>';
                        echo '<th>Date Request</th>';
                        echo '<th>Category</th>';
                        echo '<th>Location</th>';
                        echo '<th>MR No.</th>';
                        echo '<th>Status</th>';
                        echo '<th>Notes</th>';
                        echo '<th>Team Members</th>';
        
                    echo '</tr>';
                    
                foreach ($list_data as $data) {
                    $date_request_arr = $data->date_request;
                    $category_id_arr = $data->category_id;
                    $location_id_arr = $data->location_id;
                    $mr_no_arr = $data->mr_no;
                    $notes_arr = $data->notes;
                    $status_id_arr = $data->status_id;
                    $user_id_arr = $data->user_id;
                    
                    echo '<tr>' ;
                    echo '<td>' . $date_request_arr . '</td>' ;
                    echo '<td>' . $categories_add_dropdown[$category_id_arr] . '</td>' ;
                    echo '<td>' . $location_add_dropdown[$location_id_arr] . '</td>' ;
                    echo '<td>MR2021-' . $mr_no_arr . '</td>' ;
                    echo '<td>' . $notes_arr . '</td>' ;
                    echo '<td>' . $status_dropdown[$status_id_arr] . '</td>' ;
                    echo '<td>' . $members_add_dropdown[$user_id_arr] . '</td>' ;
                    echo '</tr>' ;
        
                }
        
        ?>
        </table>
</body>