<?php
    require_once '../load.php';

    if (isset($_GET['media'])) {
        $type = "'" . trim($_GET["media"]) . "'";
        
        $results = getAll($type);

        echo json_encode($results);
    }



