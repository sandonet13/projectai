<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2021-04-06 01:30:41 --> Severity: Notice --> Undefined variable: invoice_id /home/ubuntu/environment/application/controllers/Add_material_request.php 244
ERROR - 2021-04-06 01:30:41 --> Query error: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'AND invoices.deleted=0' at line 4 - Invalid query: SELECT SUM(invoice_items.total) AS invoice_subtotal
        FROM invoice_items
        LEFT JOIN invoices ON invoices.id= invoice_items.invoice_id    
        WHERE invoice_items.deleted=0 AND invoice_items.invoice_id= AND invoices.deleted=0
ERROR - 2021-04-06 01:31:01 --> Severity: error --> Exception: Call to undefined method Add_material_request::_get_invoice_status_label() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 01:34:48 --> 404 Page Not Found: 
ERROR - 2021-04-06 01:40:24 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 243
ERROR - 2021-04-06 01:40:24 --> 404 Page Not Found: 
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 243
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:40:54 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: date_request /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: category_id /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: location_id /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: project_id /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: user_id /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: status_id /home/ubuntu/environment/application/controllers/Add_material_request.php 242
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:41:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:00 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:01 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:03 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:08 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:42:36 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:43:02 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 26
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 27
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 28
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 31
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_status_label /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 2
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'labels_list' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'project_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 6
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'client_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 12
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'last_email_sent_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 18
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'recurring_invoice_id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 21
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'cancelled_at' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 30
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'cancelled_by' of non-object /home/ubuntu/environment/application/views/invoices/invoice_status_bar.php 34
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 60
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: client_info /home/ubuntu/environment/application/views/add_material_request/view.php 78
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 80
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 1
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'bill_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 11
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'due_date' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/invoice_info.php 12
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'company_name' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'address' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'vat_number' of non-object /home/ubuntu/environment/application/views/invoices/invoice_parts/bill_to.php 7
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 98
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 4
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 17
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'invoice_subtotal' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 21
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'tax' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 27
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'tax2' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 36
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'tax3' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 45
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'discount_total' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 55
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'total_paid' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 60
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'balance_due' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_total_summary /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'currency_symbol' of non-object /home/ubuntu/environment/application/views/invoices/invoice_total_section.php 71
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'note' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 122
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'recurring' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 129
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 169
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 174
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/add_material_request/view.php 187
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 238
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Undefined variable: invoice_info /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:43:10 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 284
ERROR - 2021-04-06 01:43:50 --> 404 Page Not Found: 
ERROR - 2021-04-06 01:47:15 --> Severity: error --> Exception: Call to undefined method Add_material_request::_get_invoice_status_label() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 6
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 23
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 31
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 48
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 98
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 169
ERROR - 2021-04-06 01:50:24 --> Severity: Notice --> Undefined variable: can_edit_invoices /home/ubuntu/environment/application/views/invoices/view.php 187
ERROR - 2021-04-06 01:52:44 --> Severity: Notice --> Undefined variable: add_material /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:01:05 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:03:42 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:32 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined index: invoicea_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:04:55 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:06:32 --> Severity: Notice --> Undefined index: invoicea_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:06:45 --> Severity: Notice --> Undefined index: invoicea_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:06:45 --> Severity: Notice --> Undefined index: invoicea_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined index: invoicea_info /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:07:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:12:08 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined index: invoice_infoss /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Trying to get property 'invoice_value' of non-object /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:12:33 --> Severity: Warning --> Creating default object from empty value /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 765
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$due_date /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:12:33 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:12:42 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Trying to get property 'invoice_value' of non-object /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:13:42 --> Severity: Warning --> Creating default object from empty value /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 765
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$due_date /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:13:42 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Trying to get property 'invoice_value' of non-object /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:13:50 --> Severity: Warning --> Creating default object from empty value /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 765
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$due_date /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:13:50 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:14:54 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:14:54 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:15:44 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:15:44 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:15:44 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Trying to get property 'invoice_value' of non-object /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:19:16 --> Severity: Warning --> Creating default object from empty value /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 765
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$due_date /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 02:19:16 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:19:34 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:22:16 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:26 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:27 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:27 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:28 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:28 --> Severity: error --> Exception: Function name must be a string /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:22:48 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 261
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:25:37 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 23
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 34
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 38
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 40
ERROR - 2021-04-06 02:26:00 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 48
ERROR - 2021-04-06 02:42:46 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:43:43 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:46:21 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:46:21 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:46:21 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:47:28 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined index: invoice_infoss /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:50:15 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Trying to get property 'id' of non-object /home/ubuntu/environment/application/views/add_material_request/view.php 4
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: model_info /home/ubuntu/environment/application/views/add_material_request/view.php 6
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:53:31 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:54:36 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 02:55:06 --> 404 Page Not Found: 
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:09 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 02:55:19 --> 404 Page Not Found: 
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 02:55:20 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:01:52 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 03:03:01 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:06 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:23 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:03:50 --> Severity: 4096 --> Object of class stdClass could not be converted to string /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 24
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 35
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 39
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 41
ERROR - 2021-04-06 03:03:50 --> Severity: Notice --> Undefined variable: invoice_status /home/ubuntu/environment/application/views/add_material_request/view.php 49
ERROR - 2021-04-06 03:04:33 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:04:33 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:04:33 --> Severity: Notice --> Undefined variable: invoice_info1 /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 03:04:47 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:04:47 --> Severity: Notice --> Undefined variable: invoice_info1 /home/ubuntu/environment/application/views/add_material_request/view.php 7
ERROR - 2021-04-06 03:05:15 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:05:15 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:05:25 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:05:33 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:05:38 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:05:38 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined index: model_info /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Trying to get property 'invoice_value' of non-object /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 03:14:40 --> Severity: Warning --> Creating default object from empty value /home/ubuntu/environment/application/helpers/general_helper.php 763
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 765
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$due_date /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 768
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$status /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 03:14:40 --> Severity: Notice --> Undefined property: stdClass::$payment_received /home/ubuntu/environment/application/helpers/general_helper.php 771
ERROR - 2021-04-06 03:17:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:17:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:17:11 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:17:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:17:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:17:11 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:21:52 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:21:52 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:21:52 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:21:52 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:21:52 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:21:52 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:22:57 --> Severity: error --> Exception: Call to undefined function _get_categories_dropdown() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 03:23:23 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:23:23 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:28:07 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:28:07 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:28:07 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:39:43 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:39:43 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:39:43 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:39:59 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 250
ERROR - 2021-04-06 03:39:59 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:39:59 --> Severity: Warning --> Cannot modify header information - headers already sent by (output started at /home/ubuntu/environment/application/controllers/Add_material_request.php:248) /home/ubuntu/environment/system/core/Common.php 570
ERROR - 2021-04-06 03:42:07 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:43:05 --> Severity: Notice --> Undefined variable: id /home/ubuntu/environment/application/controllers/Add_material_request.php 246
ERROR - 2021-04-06 03:43:06 --> Severity: Notice --> Undefined variable: id /home/ubuntu/environment/application/controllers/Add_material_request.php 246
ERROR - 2021-04-06 03:43:06 --> Severity: Notice --> Undefined variable: id /home/ubuntu/environment/application/controllers/Add_material_request.php 246
ERROR - 2021-04-06 03:43:20 --> 404 Page Not Found: Manager/html
ERROR - 2021-04-06 03:43:38 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:47:53 --> 404 Page Not Found: Config/getuser
ERROR - 2021-04-06 03:51:25 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /home/ubuntu/environment/application/core/MY_Controller.php 58
ERROR - 2021-04-06 03:51:25 --> Severity: error --> Exception: Call to undefined function get_array_value() /home/ubuntu/environment/application/core/MY_Controller.php 63
ERROR - 2021-04-06 03:51:40 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:41 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:42 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:43 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:44 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /home/ubuntu/environment/application/core/MY_Controller.php 58
ERROR - 2021-04-06 03:51:44 --> Severity: error --> Exception: Call to undefined function get_array_value() /home/ubuntu/environment/application/core/MY_Controller.php 63
ERROR - 2021-04-06 03:51:45 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:46 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /home/ubuntu/environment/application/core/MY_Controller.php 58
ERROR - 2021-04-06 03:51:46 --> Severity: error --> Exception: Call to undefined function get_array_value() /home/ubuntu/environment/application/core/MY_Controller.php 63
ERROR - 2021-04-06 03:51:50 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:51 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 252
ERROR - 2021-04-06 03:51:51 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /home/ubuntu/environment/application/core/MY_Controller.php 58
ERROR - 2021-04-06 03:51:51 --> Severity: error --> Exception: Call to undefined function get_array_value() /home/ubuntu/environment/application/core/MY_Controller.php 63
ERROR - 2021-04-06 03:52:19 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:52:20 --> Severity: Notice --> Trying to get property 'is_admin' of non-object /home/ubuntu/environment/application/core/MY_Controller.php 58
ERROR - 2021-04-06 03:52:20 --> Severity: error --> Exception: Call to undefined function get_array_value() /home/ubuntu/environment/application/core/MY_Controller.php 63
ERROR - 2021-04-06 03:52:38 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:54:21 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:54:28 --> Severity: Notice --> Undefined variable: options /home/ubuntu/environment/application/controllers/Add_material_request.php 251
ERROR - 2021-04-06 03:54:44 --> Severity: error --> Exception: Call to undefined function get_invoice_making_datas() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 03:54:46 --> Severity: error --> Exception: Call to undefined function get_invoice_making_datas() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 03:54:46 --> Severity: error --> Exception: Call to undefined function get_invoice_making_datas() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 03:54:46 --> Severity: error --> Exception: Call to undefined function get_invoice_making_datas() /home/ubuntu/environment/application/controllers/Add_material_request.php 247
ERROR - 2021-04-06 03:55:07 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:07 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:10 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:10 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:10 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:10 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:10 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:10 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:10 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:10 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:11 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:11 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:12 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:12 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:12 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:12 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:12 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:12 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:19 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:19 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:19 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:19 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:19 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:19 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:20 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:20 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:20 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:20 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:20 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:20 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:20 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:20 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:20 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:20 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:21 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:21 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:21 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:21 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:21 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:21 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:21 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:21 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:22 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:22 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:25 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:25 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:25 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:25 --> 404 Page Not Found: 
ERROR - 2021-04-06 03:55:27 --> Severity: Notice --> Undefined variable: view_data /home/ubuntu/environment/application/controllers/Add_material_request.php 249
ERROR - 2021-04-06 03:55:27 --> 404 Page Not Found: 
