<?php
require("db.php");

if(isset($_GET["categoria"])){
     $categoria=$_GET["categoria"];
  
    $url='https://simultaneous-sizes.000webhostapp.com/xml.php?categoria='.$categoria;
   
   
    }

function parseToXML($htmlStr)
{
$xmlStr=str_replace('<','&lt;',$htmlStr);
$xmlStr=str_replace('>','&gt;',$xmlStr);
$xmlStr=str_replace('"','&quot;',$xmlStr);
$xmlStr=str_replace("'",'&#39;',$xmlStr);
$xmlStr=str_replace("&",'&amp;',$xmlStr);
return $xmlStr;
}


// Select all the rows in the markers table
$query = "SELECT m.id,m.nombre,m.direccion,m.telefono,m.horario,m.maps,m.reservacion,m.lat,m.lng,t.tipo_act FROM marcador m INNER JOIN tipo_actividad t on m.id_tipo_actividad=t.id_tipo_act WHERE tipo_act='{$categoria}'";
$params = array(1, "some data");
$result = mysqli_query($conn,$query);

if (!$result) {
  die('Consulta invalida: ' . mysqli_error());
}

header("Content-type: text/xml");

// Start XML file, echo parent node
echo "<?xml version='1.0' ?>";
echo '<markers>';
$ind=0;
// Iterate through the rows, printing XML nodes for each
while ($row = @mysqli_fetch_assoc($result)){
  // Add to XML document node
  echo '<marker ';
  echo 'id="' . $row['id'] . '" ';
  echo 'nombre="' . parseToXML($row['nombre']) . '" ';
  echo 'direccion="' . parseToXML($row['direccion']) . '" ';
  echo 'telefono="' . parseToXML($row['telefono']) . '" ';
  echo 'horario="' . parseToXML($row['horario']) . '" ';
  echo 'maps="' . parseToXML($row['maps']) . '" ';
  echo 'reservacion="' . parseToXML($row['reservacion']) . '" ';
  echo 'lat="' . $row['lat'] . '" ';
  echo 'lng="' . $row['lng'] . '" ';
  echo 'tipo_act="' . $row['tipo_act'] . '" ';
  echo '/>';
  $ind = $ind + 1;
}

// End XML file
echo '</markers>';

?>
