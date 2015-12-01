<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$term = trim(strip_tags($_GET['term'])); //retrieve the search term that autocomplete sends
// Učitavanje XML datoteke
$xml = simplexml_load_file('../dict/cro.xml');


$xpath = $xml->xpath('//RIJEC[starts-with(GL, \'' . urldecode($term) . '\')]/GL');


//echo "<pre>";
//    var_dump($xpath);
//echo "<pre>";

$row_set = array();

foreach (array_slice($xpath, 0, 5) as $pojam) {
    array_push($row_set, (string) $pojam[0]);
}

  
echo json_encode($row_set);
