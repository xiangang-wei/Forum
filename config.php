<?php
/******************************************************
 * ------------------Required Configuration---------------
 * Please edit the following variables so the forum can
 * work correctly.
 ******************************************************/

//We log to the DataBase
define("LOCALHOST", "172.0.0.1");
define("DBUSER", "forum");
define("DBPASSWORD", "forum123");
define("DBNAME", "forum");

//mysql_connect('host', 'username', 'password');
//mysql_select_db('database_name');
@ $db = new mysqli(LOCALHOST, DBUSER, DBPASSWORD, DBNAME);

//Username of the Administrator
$admin = 'admin';

/******************************************************
 * -----------------Optional Configuration----------------
 ******************************************************/

//Forum Home Page
$url_home = 'index.php';

//Design Name
$design = 'default';


/******************************************************
 * ----------------------Initialization-------------------
 ******************************************************/
include('init.php');
?>