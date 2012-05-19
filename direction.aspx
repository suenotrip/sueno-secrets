<%@ Page Language="C#" AutoEventWireup="true" CodeFile="direction.aspx.cs" Inherits="direction" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<%--<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">--%>
<html>
	<head>
		<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<style type="text/css">
			body {
				font-family: Helvetica, Arial, sans-serif;
				font-size:10px;
				margin:0;
			}
		</style>

		<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
		<script type="text/javascript">

		    if (navigator.geolocation) {
		        navigator.geolocation.getCurrentPosition(function (position) {
		            initialize(position.coords.latitude, position.coords.longitude);

		        });
		        navigator.geolocation.getCurrentPosition(function (position) {
		            calcRoute(position.coords.latitude, position.coords.longitude);

		        });
		    }
		    else {
		        if (document.getElementById("GeoAPI")) {
		            document.getElementById("GeoAPI").innerHTML = "I'm sorry but geolocation services are not supported by your browser";
		            document.getElementById("GeoAPI").style.color = "#FF0000";
		        }
		    }
		    var directionDisplay;
		    var directionsService = new google.maps.DirectionsService();

		    var latitude;
		    var longitude;
		    function initialize(myLatitude, myLongitude) {
		        latitude = myLatitude;
		        longitude = myLongitude;
		        var latlng = new google.maps.LatLng(myLatitude, myLongitude);
		        directionsDisplay = new google.maps.DirectionsRenderer();
		        var settings = {
		            zoom: 15,
		            center: latlng,
		            mapTypeControl: true,
		            mapTypeControlOptions: { style: google.maps.MapTypeControlStyle.DROPDOWN_MENU },
		            navigationControl: true,
		            navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL },
		            mapTypeId: google.maps.MapTypeId.ROADMAP
		        };
		        var map = new google.maps.Map(document.getElementById("map_canvas"), settings);
		        directionsDisplay.setMap(map);
		        var contentString = '<div id="content">' +
				'<div id="siteNotice">' +
				'</div>' +
				'<h1 id="firstHeading" class="firstHeading">Høgenhaug</h1>' +
				'<div id="bodyContent">' +
				'<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>' +
				'<p>Find your way here from:</p>' +
				'<form  action="newGMap.aspx" onsubmit="calcRoute();return false;">' +
				'<input type="text" id="start" value="Prinsensgade 5, 9000">' +
				'<input type="submit" value="Find directions"></form>' +
				'</div>' +
				'</div>';
		        var infowindow = new google.maps.InfoWindow({
		            content: contentString,
		            maxWidth: 300
		        });

		        var companyImage = new google.maps.MarkerImage('Images/logo.png',
					new google.maps.Size(100, 50),
					new google.maps.Point(0, 0),
					new google.maps.Point(50, 50)
				);

		        var companyShadow = new google.maps.MarkerImage('Images/logo_shadow.png',
					new google.maps.Size(130, 50),
					new google.maps.Point(0, 0),
					new google.maps.Point(65, 50));

		        // var companyPos = new google.maps.LatLng(myLatitude,myLongitude);

		        var companyMarker = new google.maps.Marker({
		            position: latlng,
		            map: map,
		            icon: companyImage,
		            shadow: companyShadow,
		            title: "Høgenhaug",
		            zIndex: 3
		        });


		        google.maps.event.addListener(companyMarker, 'click', function () {
		            infowindow.open(map, companyMarker);
		        });
		    }

		    function calcRoute(myLatitude, myLongitude) {
		        var start = document.getElementById("start").value;
		        //var end = "57.0442, 9.9116";
		        var lat = "57.5";
		        var lon = "67.0";
		        var end = new google.maps.LatLng(myLatitude, myLongitude);
		        //var end = lat, lon;
		        var request = {
		            origin: start,
		            destination: end,
		            travelMode: google.maps.DirectionsTravelMode.DRIVING
		        };

		        directionsService.route(request, function (response, status) {
		            if (status == google.maps.DirectionsStatus.OK) {
		                directionsDisplay.setDirections(response);
		            }
		        });
		    }
		</script>
	</head>
	<body onload="initialize()">
		<div id="map_canvas" style="width:700px; height:450px"></div>
	</body>
</html>