<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

// Učitavanje XML datoteke
$xml = simplexml_load_file('../dict/cro.xml');

$xpath = $xml->xpath('//RIJEC');

echo json_encode(count($xpath));