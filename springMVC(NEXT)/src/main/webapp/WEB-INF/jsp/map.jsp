<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sample Map</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {
            "packages":["map"],
            "mapsApiKey": "AIzaSyBNdEIt3PebSlhomppVqsXZAOELrDv52YQ" // Replace with your Google Maps API Key
        });
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Lat', 'Long', 'Name'],
                [16.5062, 80.6480,'Vijayawada'],
                [16.3067, 80.4365, 'Guntur'],
                [16.4419, 80.6226, 'KLU']
            ]);
            var map = new google.visualization.Map(document.getElementById('map_div'));
            map.draw(data, {
                showTooltip: true,
                showInfoWindow: true
            });
        }
    </script>
</head>
<body>
<h1 align="center">Our Location</h1>
    <div id="map_div" style="width: 800px; height: 700px"></div>
</body>
</html>
