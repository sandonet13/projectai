<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2021-03-01 11:06:46 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:06:46 --> 404 Page Not Found: Faviconico/index
ERROR - 2021-03-01 11:06:51 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:21 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:21 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:21 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:21 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:25 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:26 --> 404 Page Not Found: Test/index
ERROR - 2021-03-01 11:07:49 --> 404 Page Not Found: Templtate/index
ERROR - 2021-03-01 11:07:54 --> 404 Page Not Found: Template/index
ERROR - 2021-03-01 11:08:21 --> 404 Page Not Found: Home/index
ERROR - 2021-03-01 11:08:25 --> 404 Page Not Found: Home/index
ERROR - 2021-03-01 11:09:37 --> 404 Page Not Found: Home/index
ERROR - 2021-03-01 12:31:40 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:31:44 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:31:45 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:31:45 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:31:49 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:31:54 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:54 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:54 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:55 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:55 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:55 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:55 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:56 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:56 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 12:32:56 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 13:14:55 --> Could not find the language line "companys_name"
ERROR - 2021-03-01 13:36:19 --> 404 Page Not Found: admin/Product/index
ERROR - 2021-03-01 13:36:21 --> 404 Page Not Found: admin/Product/index
ERROR - 2021-03-01 13:36:21 --> 404 Page Not Found: admin/Product/index
ERROR - 2021-03-01 13:36:21 --> 404 Page Not Found: admin/Product/index
ERROR - 2021-03-01 13:40:17 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 13:54:28 --> 404 Page Not Found: admin/Test/index
ERROR - 2021-03-01 14:05:03 --> Severity: Notice --> Undefined property: CI_Loader::$login_user /var/www/project.audemars.co.id/application/views/about/index.php 11
ERROR - 2021-03-01 14:05:03 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /var/www/project.audemars.co.id/application/views/about/index.php 11
ERROR - 2021-03-01 14:13:09 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT notes.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM notes
        LEFT JOIN users ON users.id=notes.created_by
        WHERE notes.deleted=0  AND notes.created_by=1 AND notes.user_id=0 AND notes.client_id=0 
ERROR - 2021-03-01 14:13:16 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT notes.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM notes
        LEFT JOIN users ON users.id=notes.created_by
        WHERE notes.deleted=0  AND notes.created_by=1 AND notes.user_id=0 AND notes.client_id=0 
ERROR - 2021-03-01 14:13:43 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT notes.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM notes
        LEFT JOIN users ON users.id=notes.created_by
        WHERE notes.deleted=0  AND notes.created_by=1 AND notes.user_id=0 AND notes.client_id=0 
ERROR - 2021-03-01 14:16:14 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT material_request.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM material_request
        LEFT JOIN users ON users.id=material_request.created_by
        WHERE material_request.deleted=0  AND material_request.created_by=1 AND material_request.user_id=0 AND material_request.client_id=0 
ERROR - 2021-03-01 14:17:12 --> Could not find the language line "mr_date_register"
ERROR - 2021-03-01 14:17:12 --> Could not find the language line "no_mr_asset"
ERROR - 2021-03-01 14:17:12 --> Could not find the language line "item_description"
ERROR - 2021-03-01 14:17:12 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT material_request.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM material_request
        LEFT JOIN users ON users.id=material_request.created_by
        WHERE material_request.deleted=0  AND material_request.created_by=1 AND material_request.user_id=0 AND material_request.client_id=0 
ERROR - 2021-03-01 14:19:06 --> Could not find the language line "mr_date_register"
ERROR - 2021-03-01 14:19:06 --> Could not find the language line "no_mr_asset"
ERROR - 2021-03-01 14:19:06 --> Could not find the language line "item_description"
ERROR - 2021-03-01 14:19:07 --> Query error: Unknown column 'material_request.labels' in 'where clause' - Invalid query: SELECT material_request.*, CONCAT(users.first_name, ' ', users.last_name) AS created_by_user_name, (SELECT GROUP_CONCAT(labels.id, '--::--', labels.title, '--::--', labels.color) FROM labels WHERE FIND_IN_SET(labels.id, material_request.labels)) AS labels_list
        FROM material_request
        LEFT JOIN users ON users.id=material_request.created_by
        WHERE material_request.deleted=0 
ERROR - 2021-03-01 14:19:29 --> Could not find the language line "mr_date_register"
ERROR - 2021-03-01 14:19:29 --> Could not find the language line "no_mr_asset"
ERROR - 2021-03-01 14:19:29 --> Could not find the language line "item_description"
ERROR - 2021-03-01 14:23:15 --> Could not find the language line "Negentot"
ERROR - 2021-03-01 14:23:18 --> Could not find the language line "Negentot"
ERROR - 2021-03-01 14:23:19 --> Could not find the language line "Negentot"
ERROR - 2021-03-01 14:23:28 --> Could not find the language line "titles"
ERROR - 2021-03-01 14:59:51 --> 404 Page Not Found: Phpmyadmin/index
ERROR - 2021-03-01 15:15:46 --> 404 Page Not Found: Robotstxt/index
ERROR - 2021-03-01 10:07:04 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'root'@'localhost' (using password: YES) C:\xampp\htdocs\project.audemars.co.id\system\database\drivers\mysqli\mysqli_driver.php 203
ERROR - 2021-03-01 10:07:04 --> Unable to connect to the database
