<?php 
if(isset($_GET["categoria"])){
     $categoria=$_GET["categoria"];
   
    $url='https://simultaneous-sizes.000webhostapp.com/xml.php?categoria='.$categoria;
   
   
    }
   
?>

<!DOCTYPE html>
<html lang="en">
<head>
      <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
      /* Establezca siempre la altura del mapa explícitamente para definir el tamaño del div
       * elementos que contiene el mapa. */
      #map {
        height: 73%;
      }
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
     
      
    </style>
    <title>eventos</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>


<body>

  
    
    <nav class="navbar navbar-expand-lg navbar-light bg-warning p-3">
        <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <span class="text-dark fs-13 fw-bold" >Drboredom<span>
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.php">Inicio</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="chat.php">chat</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="#">eventos</a>
                    </li>


            
          </div>
        </div>
      </nav>
      <br >
       <header class="container-fluid bg-warning d-flex justify-content-center">
       <p class="text-dark mt-2 mb-2 fw-bold">
            Estas son las recomendaciones basadas en tu elección
        </p>
            </header>
        <div id="map"></div>
        <header class="container-fluid bg-warning d-flex justify-content-center">
        <p class="text-dark mt-2 mb-2 fw-bold">
            El asistente de entretenimiento predilecto
        </p>
    </header>
    <script>
      var customLabel = {
        Divertirse: {
          label: 'D'
        },
        Comer: {
          label: 'C'
        }
      };

        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          center: new google.maps.LatLng(19.3911668, -99.4238156),
          zoom: 11,
          zoomControl: true,
            zoomControlOptions: {
            style: google.maps.ZoomControlStyle.SMALL
            },
            keyboardShortcuts: true,
            disableDoubleClickZoom: true,
            draggable: true,
            scrollwheel: false,
            panControl: true,
            panControlOptions: {
                position: google.maps.ControlPosition.TOP_RIGHT
            },
            streetViewControl: true,
            streetViewControlOptions: {
            position: google.maps.ControlPosition.BOTTOM_CENTER
            },
            mapTypeControl: true,
            mapTypeControlOptions: {
            style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
            position: google.maps.ControlPosition.TOP_CENTER,
            mapTypeIds: [
            google.maps.MapTypeId.ROADMAP,
            google.maps.MapTypeId.HYBRID
            ]
            }
        
        });
        var infoWindow = new google.maps.InfoWindow;
        <?php
       echo "var jsvar ='$url';";
         ?>
       
          // Change this depending on the name of your PHP or XML file
          downloadUrl(jsvar, function(data) {
            var xml = data.responseXML;
            var markers = xml.documentElement.getElementsByTagName('marker');
            Array.prototype.forEach.call(markers, function(markerElem) {
              var id = markerElem.getAttribute('id');
              var nombre = markerElem.getAttribute('nombre');
              var direccion = markerElem.getAttribute('direccion');
              var telefono = markerElem.getAttribute('telefono');
              var horario = markerElem.getAttribute('horario');
              var maps = markerElem.getAttribute('maps');
              var reservacion = markerElem.getAttribute('reservacion');
              var tipo_act = markerElem.getAttribute('tipo_act');
              var point = new google.maps.LatLng(
                  parseFloat(markerElem.getAttribute('lat')),
                  parseFloat(markerElem.getAttribute('lng')));

              var infowincontent = document.createElement('div');
              var strong = document.createElement('strong');
              strong.textContent = nombre
              infowincontent.appendChild(strong);
              infowincontent.appendChild(document.createElement('br'));

              var text = document.createElement('text');
              text.textContent = direccion
              infowincontent.appendChild(text);
              infowincontent.appendChild(document.createElement('br'));
              
               var texta = document.createElement('texta');
              texta.textContent = "Teléfono: "+telefono
              infowincontent.appendChild(texta);
              infowincontent.appendChild(document.createElement('br'));
              
              var textb = document.createElement('textb');
              textb.textContent = "Horario: "+horario
              infowincontent.appendChild(textb);
              infowincontent.appendChild(document.createElement('br'));
             
             
              var a = document.createElement('a');
              var linkText = document.createTextNode("Ver en Google Maps");
              a.appendChild(linkText);
              a.title = "Ver en Google Maps";
              a.href = maps;
              a.target = "_blank";
              infowincontent.appendChild(a);
              infowincontent.appendChild(document.createElement('br'));
              
              if (reservacion.length>0) {
                  var a = document.createElement('a');
                  var linkText = document.createTextNode("Informacíon y/o rservación");
                  a.appendChild(linkText);
                  a.title = "Informacíon y/o rservación";
                  a.href = reservacion;
                  a.target = "_blank";
                  infowincontent.appendChild(a);
                  
                           }else {
                                  var text = document.createElement('text');
                                  text.textContent = "Reservación solo presencial"
                                  infowincontent.appendChild(text);
                                  infowincontent.appendChild(document.createElement('br'));
                            }
              
             
                                  
              var icon = customLabel[tipo_act] || {};
              var marker = new google.maps.Marker({
                map: map,
                position: point,
                label: icon.label
              });
              marker.addListener('click', function() {
                infoWindow.setContent(infowincontent);
                infoWindow.open(map, marker);
              });
            });
          });
        }



      function downloadUrl(url, callback) {
        var request = window.ActiveXObject ?
            new ActiveXObject('Microsoft.XMLHTTP') :
            new XMLHttpRequest;

        request.onreadystatechange = function() {
          if (request.readyState == 4) {
            request.onreadystatechange = doNothing;
            callback(request, request.status);
          }
        };

        request.open('GET', url, true);
        request.send(null);
      }

      function doNothing() {}
    </script>

 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha256-946098361984-3c2qlqeua609ngo6lkmf46js131u9v9p.apps.googleusercontent.com" crossorigin="anonymous"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBDaeWicvigtP9xPv919E-RNoxfvC-Hqik&callback=initMap" defer ></script>

   
  
</body>
</html>