<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gmapTest.aspx.cs" Inherits="gmapTest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        html
        {
            height: 100%;
        }
        body
        {
            height: 100%;
            margin: 0;
            padding: 0;
        }
        #map_canvas
        {
            height: 100%;
        }
    </style>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false">
    </script>
    <%--
    <script type="text/javascript" src="http://www.google.com/jsapi"></script>
--%>
    <script type="text/javascript">
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                initialize(position.coords.latitude, position.coords.longitude);
            });
            
        }
        else {
            if (document.getElementById("GeoAPI")) {
                document.getElementById("GeoAPI").innerHTML = "I'm sorry but geolocation services are not supported by your browser";
                document.getElementById("GeoAPI").style.color = "#FF0000";
            }
        }


        function initialize(myLatitude, myLongitude) {

            var latlngPos = new google.maps.LatLng(myLatitude, myLongitude);
            //var latlngPos = new google.maps.LatLng(ClientLocation.latitude, ClientLocation.longitude);

            //var latlngPos1 = new google.maps.LatLng(latitude, longitude);

            // Set up options for the Google map

//            var myOptions = {
//                zoom: 3,
//                center: latlngPos,
//                mapTypeId: google.maps.MapTypeId.ROADMAP
            //            };
            var settings = {
                zoom: 3,
                center: latlngPos,
                mapTypeControl: true,
                mapTypeControlOptions: { style: google.maps.MapTypeControlStyle.DROPDOWN_MENU },
                navigationControl: true,
                navigationControlOptions: { style: google.maps.NavigationControlStyle.SMALL },
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

           // directionsDisplay.setMap(map);


            // Define the map
            var map = new google.maps.Map(document.getElementById("map"), settings);
            // Add the marker
            var marker = new google.maps.Marker({
                position: latlngPos,
                map: map,
                title: "Suenotrip.com "
            });

            directionsService.route(request, function(response, status) {
	if (status == google.maps.DirectionsStatus.OK) {
		directionsDisplay.setDirections(response);
	}
});
        }
        
    </script>
    <%-- <script type="text/javascript" >
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                showLocation(position.coords.latitude, position.coords.longitude);
            });
        }
        else {
            if (document.getElementById("GeoAPI")) {
                document.getElementById("GeoAPI").innerHTML = "I'm sorry but geolocation services are not supported by your browser";
                document.getElementById("GeoAPI").style.color = "#FF0000";
            }
        }


        function showLocation(myLatitude, myLongitude) {
            var latlngPos = new google.maps.LatLng(myLatitude, myLongitude);

            var latitude = parseFloat("12.515252");
            var longitude = parseFloat("-28.189852");

            var latlngPos1 = new google.maps.LatLng(latitude, longitude);

            var myOptions = {
                zoom: 3,
                center: latlngPos,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };


            // Define the map
            var map = new google.maps.Map(document.getElementById("map"), myOptions);

            var marker1 = new google.maps.Marker({
                position: latlngPos1,
                map: map,
                title: "Suenotrip.com Headquarter"
            });
//            var marker2 = new google.maps.Marker({
//                position: latlngPos1,
//                map: map,
//                title: "Suenotrip.com new office"
//            });
        }
       
    </script>--%>
</head>
<body onload="initialize()">
    <div id="map" style="width: 100%; height: 100%">
    </div>
    <%--<form action="#" onsubmit="showLocation(); return false;">
    <p>
        <input type="text" name="address1" value="Address 1" class="address_input" size="40" />
        <input type="submit" name="find" value="Search" />
    </p>
    </form>--%>
</body>
</html>
