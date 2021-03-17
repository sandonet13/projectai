<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2021-03-15 05:28:11 --> Severity: Warning --> mysqli::real_connect(): (HY000/1698): Access denied for user 'root'@'localhost' /home/ubuntu/environment/system/database/drivers/mysqli/mysqli_driver.php 203
ERROR - 2021-03-15 05:28:11 --> Unable to connect to the database
ERROR - 2021-03-15 05:31:10 --> Severity: Warning --> mysqli::real_connect(): (HY000/1045): Access denied for user 'prpjectuser'@'localhost' (using password: YES) /home/ubuntu/environment/system/database/drivers/mysqli/mysqli_driver.php 203
ERROR - 2021-03-15 05:31:10 --> Unable to connect to the database
ERROR - 2021-03-15 05:37:35 --> 404 Page Not Found: Manager/html
ERROR - 2021-03-15 05:56:05 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 332
ERROR - 2021-03-15 05:56:05 --> Severity: Notice --> Undefined variable: tax2 /home/ubuntu/environment/application/controllers/Expenses.php 333
ERROR - 2021-03-15 05:56:05 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 05:56:05 --> Severity: Notice --> Undefined variable: tax2 /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 06:02:35 --> 404 Page Not Found: Phpmyadmin/index
ERROR - 2021-03-15 06:03:48 --> 404 Page Not Found: Phpmyadmin/index
ERROR - 2021-03-15 06:04:17 --> 404 Page Not Found: Phpmyadmin/index
ERROR - 2021-03-15 06:04:50 --> 404 Page Not Found: Phpmyadmin/index
ERROR - 2021-03-15 07:00:52 --> Severity: Notice --> Undefined variable: taxes_table /home/ubuntu/environment/application/models/Expenses_model.php 74
ERROR - 2021-03-15 07:00:52 --> Severity: Notice --> Undefined variable: taxes_table /home/ubuntu/environment/application/models/Expenses_model.php 74
ERROR - 2021-03-15 07:00:52 --> Severity: Notice --> Undefined variable: taxes_table /home/ubuntu/environment/application/models/Expenses_model.php 75
ERROR - 2021-03-15 07:00:52 --> Severity: Notice --> Undefined variable: taxes_table /home/ubuntu/environment/application/models/Expenses_model.php 75
ERROR - 2021-03-15 07:00:52 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '* FROM ) AS tax_table ON tax_table.id = expenses.tax_id
        LEFT JOIN (SELE' at line 11 - Invalid query: SELECT expenses.*, expense_categories.title as category_title, 
                 CONCAT(users.first_name, ' ', users.last_name) AS linked_user_name,
                 clients.company_name AS linked_client_name,
                 projects.title AS project_title
                 
        FROM expenses
        LEFT JOIN expense_categories ON expense_categories.id= expenses.category_id
        LEFT JOIN clients ON clients.id= expenses.client_id
        LEFT JOIN projects ON projects.id= expenses.project_id
        LEFT JOIN users ON users.id= expenses.user_id
        LEFT JOIN (SELECT .* FROM ) AS tax_table ON tax_table.id = expenses.tax_id
        LEFT JOIN (SELECT .* FROM ) AS tax_table2 ON tax_table2.id = expenses.tax_id2
            
        WHERE expenses.deleted=0  AND (expenses.expense_date BETWEEN '2021-03-01' AND '2021-03-31') 
ERROR - 2021-03-15 07:01:49 --> Severity: Notice --> Undefined property: stdClass::$tax_percentage /home/ubuntu/environment/application/controllers/Expenses.php 317
ERROR - 2021-03-15 07:01:49 --> Severity: Notice --> Undefined property: stdClass::$tax_percentage2 /home/ubuntu/environment/application/controllers/Expenses.php 320
ERROR - 2021-03-15 07:01:56 --> Severity: Notice --> Undefined property: stdClass::$tax_percentage /home/ubuntu/environment/application/controllers/Expenses.php 317
ERROR - 2021-03-15 07:01:56 --> Severity: Notice --> Undefined property: stdClass::$tax_percentage2 /home/ubuntu/environment/application/controllers/Expenses.php 320
ERROR - 2021-03-15 07:14:00 --> Query error: Unknown column 'expenses.tax_id' in 'on clause' - Invalid query: SELECT expenses.*, expense_categories.title as category_title, 
                 CONCAT(users.first_name, ' ', users.last_name) AS linked_user_name,
                 clients.company_name AS linked_client_name,
                 projects.title AS project_title,
                 tax_table.percentage AS tax_percentage,
                 tax_table2.percentage AS tax_percentage2
                 
        FROM expenses
        LEFT JOIN expense_categories ON expense_categories.id= expenses.category_id
        LEFT JOIN clients ON clients.id= expenses.client_id
        LEFT JOIN projects ON projects.id= expenses.project_id
        LEFT JOIN users ON users.id= expenses.user_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table ON tax_table.id = expenses.tax_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table2 ON tax_table2.id = expenses.tax_id2
            
        WHERE expenses.deleted=0  AND (expenses.expense_date BETWEEN '2021-03-01' AND '2021-03-31') 
ERROR - 2021-03-15 07:14:17 --> 404 Page Not Found: Manager/html
ERROR - 2021-03-15 07:14:18 --> Query error: Unknown column 'expenses.tax_id' in 'on clause' - Invalid query: SELECT expenses.*, expense_categories.title as category_title, 
                 CONCAT(users.first_name, ' ', users.last_name) AS linked_user_name,
                 clients.company_name AS linked_client_name,
                 projects.title AS project_title,
                 tax_table.percentage AS tax_percentage,
                 tax_table2.percentage AS tax_percentage2
                 
        FROM expenses
        LEFT JOIN expense_categories ON expense_categories.id= expenses.category_id
        LEFT JOIN clients ON clients.id= expenses.client_id
        LEFT JOIN projects ON projects.id= expenses.project_id
        LEFT JOIN users ON users.id= expenses.user_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table ON tax_table.id = expenses.tax_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table2 ON tax_table2.id = expenses.tax_id2
            
        WHERE expenses.deleted=0  AND (expenses.expense_date BETWEEN '2021-03-01' AND '2021-03-31') 
ERROR - 2021-03-15 07:14:42 --> Query error: Unknown column 'expenses.tax_id' in 'on clause' - Invalid query: SELECT expenses.*, expense_categories.title as category_title, 
                 CONCAT(users.first_name, ' ', users.last_name) AS linked_user_name,
                 clients.company_name AS linked_client_name,
                 projects.title AS project_title,
                 tax_table.percentage AS tax_percentage,
                 tax_table2.percentage AS tax_percentage2
                 
        FROM expenses
        LEFT JOIN expense_categories ON expense_categories.id= expenses.category_id
        LEFT JOIN clients ON clients.id= expenses.client_id
        LEFT JOIN projects ON projects.id= expenses.project_id
        LEFT JOIN users ON users.id= expenses.user_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table ON tax_table.id = expenses.tax_id
        LEFT JOIN (SELECT taxes.* FROM taxes) AS tax_table2 ON tax_table2.id = expenses.tax_id2
            
        WHERE expenses.deleted=0  AND (expenses.expense_date BETWEEN '2021-03-01' AND '2021-03-31') 
ERROR - 2021-03-15 07:15:22 --> Query error: Table 'projectai.ci_sessions' doesn't exist - Invalid query: SELECT 1
FROM `ci_sessions`
WHERE `id` = '2gl45f8apfr5sfb28cbplfcjfnuh8bdv'
ERROR - 2021-03-15 07:28:23 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:28:43 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:28:54 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:29:02 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:29:35 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:29:47 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:30:08 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:30:57 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 07:30:57 --> Severity: Notice --> Undefined variable: tax2 /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 07:31:09 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:31:24 --> Could not find the language line "taxi"
ERROR - 2021-03-15 07:32:45 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 332
ERROR - 2021-03-15 07:32:45 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 07:32:58 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 332
ERROR - 2021-03-15 07:32:58 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 07:33:22 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 332
ERROR - 2021-03-15 07:33:22 --> Severity: Notice --> Undefined variable: tax /home/ubuntu/environment/application/controllers/Expenses.php 334
ERROR - 2021-03-15 07:53:23 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 07:53:28 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 07:53:37 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 07:54:41 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 07:54:43 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 08:03:17 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 08:08:52 --> 404 Page Not Found: Invoices/list_data5
ERROR - 2021-03-15 08:09:15 --> 404 Page Not Found: Invoices/list_data5
ERROR - 2021-03-15 08:09:19 --> 404 Page Not Found: Invoices/list_data5
ERROR - 2021-03-15 08:12:15 --> Could not find the language line "Petty Cash"
ERROR - 2021-03-15 08:17:49 --> 404 Page Not Found: Pcash/index
ERROR - 2021-03-15 08:38:48 --> 404 Page Not Found: Manager/html
ERROR - 2021-03-15 08:43:24 --> Severity: error --> Exception: syntax error, unexpected '$project_id' (T_VARIABLE), expecting function (T_FUNCTION) or const (T_CONST) /home/ubuntu/environment/application/controllers/Pcash.php 57
ERROR - 2021-03-15 08:46:40 --> Severity: error --> Exception: syntax error, unexpected '' (T_ENCAPSED_AND_WHITESPACE), expecting '-' or identifier (T_STRING) or variable (T_VARIABLE) or number (T_NUM_STRING) /home/ubuntu/environment/application/controllers/Pcash.php 17
ERROR - 2021-03-15 08:55:49 --> Severity: error --> Exception: syntax error, unexpected '$options' (T_VARIABLE), expecting function (T_FUNCTION) or const (T_CONST) /home/ubuntu/environment/application/controllers/Pcash.php 378
ERROR - 2021-03-15 08:59:10 --> Severity: Notice --> Undefined variable: custom_fields /home/ubuntu/environment/application/controllers/Pcash.php 364
ERROR - 2021-03-15 08:59:10 --> Severity: Notice --> Undefined variable: custom_fields /home/ubuntu/environment/application/controllers/Pcash.php 370
ERROR - 2021-03-15 08:59:10 --> Severity: Warning --> Invalid argument supplied for foreach() /home/ubuntu/environment/application/controllers/Pcash.php 498
ERROR - 2021-03-15 08:59:31 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Pcash.php 367
ERROR - 2021-03-15 09:00:19 --> Severity: Notice --> Undefined variable: custom_fields /home/ubuntu/environment/application/controllers/Pcash.php 364
ERROR - 2021-03-15 09:00:19 --> Severity: error --> Exception: Too few arguments to function Pcash::_make_row(), 1 passed in /home/ubuntu/environment/application/controllers/Pcash.php on line 370 and exactly 2 expected /home/ubuntu/environment/application/controllers/Pcash.php 476
ERROR - 2021-03-15 09:00:26 --> Severity: error --> Exception: Too few arguments to function Pcash::_make_row(), 1 passed in /home/ubuntu/environment/application/controllers/Pcash.php on line 370 and exactly 2 expected /home/ubuntu/environment/application/controllers/Pcash.php 476
ERROR - 2021-03-15 09:01:27 --> Severity: Notice --> Undefined variable: invoice_labels /home/ubuntu/environment/application/controllers/Pcash.php 495
ERROR - 2021-03-15 09:01:41 --> Severity: Notice --> Undefined variable: invoice_url /home/ubuntu/environment/application/controllers/Pcash.php 486
ERROR - 2021-03-15 09:01:41 --> Severity: Notice --> Undefined variable: invoice_labels /home/ubuntu/environment/application/controllers/Pcash.php 495
