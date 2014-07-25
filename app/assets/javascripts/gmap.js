$(document).ready(function(){
var map;
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(-34.397, 150.644),
      zoom: 1
     };
    map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
    var i;
    for(i = 0; i< regions.length; i++){
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(regions[i].latitude, regions[i].longitude),
        map: map
      });
    }
    }
  console.log(regions);

  google.maps.event.addDomListener(window, 'load', initialize);
});
