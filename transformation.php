<?php

$params = array('rijec' => urldecode($_GET['rijec']));

// Učitavanje XML datoteke
$xml = new DOMDocument;
$xml->load('dict/cro.xml');

// Učitavanje XSL datoteke
$xsl = new DOMDocument;
$xsl->load('transformation.xsl');

// Konfiguracija transformatora
$proc = new XSLTProcessor;

// Učitavanje xsl pravila
$proc->importStyleSheet($xsl);

foreach ($params as $key => $val) {
    $proc->setParameter('', $key, $val);
}

echo $proc->transformToXML($xml);
