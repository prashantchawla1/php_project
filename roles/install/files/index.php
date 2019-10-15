<?php
$f3 = require('fatfree-master/lib/base.php');
$f3->route('GET /',
    function() {
        echo 'Welcome to Flux7!';
    }
);
$f3->run();
?>
