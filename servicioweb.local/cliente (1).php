<?php

// Iniciamos el cliente SOAP
// Escribimos la dirección donde se encuentra el servicio
$url = "http://jardineria.local/soap/servidor.php";
$uri = "http://jardineria.local";


$conexion = new SoapClient(
			null,
			array('location' => $url, 'uri' => $uri)
			);

$datos = $conexion->productos();
var_dump($datos);
?>