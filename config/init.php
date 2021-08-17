<?php
//config file in config folder
require_once 'config.php';

//Includes Class in module when object instantiates
function init_autoload($classname){
    if(file_exists("../lib/$classname.php")){ 
        require_once "../lib/$classname.php";
    }
    
}

//Register custom autoload function
spl_autoload_register('init_autoload');