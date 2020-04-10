<?php

function getAll($type)
{
    $pdo = Database::getInstance()->getConnection();
    $queryAll = 'SELECT * FROM tbl_media WHERE Type = '.$type;
    $results = $pdo->query($queryAll);

    if ($results) {
        return $results->fetchAll(PDO::FETCH_ASSOC );
    } else {
        return 'There was a problem accessing this info';
    }
}

