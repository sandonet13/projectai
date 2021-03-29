<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2021-03-29 01:50:29 --> Query error: Unknown column '0s' in 'where clause' - Invalid query: SELECT SUM(balance) AS balance FROM petty_cash WHERE location_id=1 AND deleted=0s
ERROR - 2021-03-29 01:50:29 --> Query error: Unknown column '0s' in 'where clause' - Invalid query: SELECT SUM(balance) AS balance FROM petty_cash WHERE location_id=1 AND deleted=0s
ERROR - 2021-03-29 01:51:37 --> Query error: FUNCTION petty_cash.SUM does not exist. Check the 'Function Name Parsing and Resolution' section in the Reference Manual - Invalid query: SELECT petty_cash.SUM(balance) AS balance FROM petty_cash WHERE petty_cash.location_id=1 AND petty_cash.deleted=0
ERROR - 2021-03-29 01:58:45 --> Severity: Notice --> Undefined property: stdClass::$balance /home/ubuntu/environment/application/controllers/Pcash.php 34
ERROR - 2021-03-29 02:03:19 --> Severity: error --> Exception: Call to undefined function int() /home/ubuntu/environment/application/controllers/Pcash.php 30
ERROR - 2021-03-29 02:04:42 --> Severity: Warning --> number_format() expects parameter 1 to be float, array given /home/ubuntu/environment/application/helpers/currency_helper.php 43
ERROR - 2021-03-29 02:05:43 --> Severity: Notice --> Undefined variable: tot_corr_zero /home/ubuntu/environment/application/controllers/Pcash.php 35
ERROR - 2021-03-29 02:06:51 --> Severity: Notice --> Undefined variable: tot_corr_zero /home/ubuntu/environment/application/controllers/Pcash.php 35
ERROR - 2021-03-29 02:07:48 --> Severity: Warning --> number_format() expects parameter 1 to be float, array given /home/ubuntu/environment/application/helpers/currency_helper.php 43
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined property: stdClass::$total_cibitung /home/ubuntu/environment/application/controllers/Pcash.php 43
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined variable: corr_zero /home/ubuntu/environment/application/controllers/Pcash.php 44
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Trying to get property 'balance' of non-object /home/ubuntu/environment/application/controllers/Pcash.php 44
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined property: stdClass::$total_field_langgak /home/ubuntu/environment/application/controllers/Pcash.php 55
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined variable: corr_zero /home/ubuntu/environment/application/controllers/Pcash.php 56
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Trying to get property 'balance' of non-object /home/ubuntu/environment/application/controllers/Pcash.php 56
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined property: stdClass::$total_field_phe /home/ubuntu/environment/application/controllers/Pcash.php 67
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Undefined variable: corr_zero /home/ubuntu/environment/application/controllers/Pcash.php 68
ERROR - 2021-03-29 02:13:34 --> Severity: Notice --> Trying to get property 'balance' of non-object /home/ubuntu/environment/application/controllers/Pcash.php 68
