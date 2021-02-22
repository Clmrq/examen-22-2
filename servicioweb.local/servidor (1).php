<?php
$uri="http://jardineria.local/";
$server = new SoapServer(null,array('uri'=>$uri));
$server->addFunction("productos");
$server->handle();

function productos(){
	$host = "localhost";
	$usuario = "root";
	$contrasenha = "";
	$bbdd = "jardineria";
	
	$conexion = new mysqli($host, $usuario, $contrasenha, $bbdd);
	
	if(!$conexion){
		return "Error en la conexión a la bbdd ".$conexion->error;
	}
	
	$consulta = "SELECT * FROM productos";
	
	$productos = $conexion->query($consulta);
	
	if(!$productos){
		return "Error en la conexión a la bbdd ".$conexion->error;
	}
	
	
	return $productos;
	
}