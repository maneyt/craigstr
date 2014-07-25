$(document).ready(function(){
var map;
  function initialize() {
    var mapOptions = {
      center: new google.maps.LatLng(-34.397, 150.644),
      zoom: 1
     };
    map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
    for(var i = 0; i< regions.length; i++){
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(regions[i].latitude, regions[i].longitude),
        map: map,
        url: "localhost:3000/" + regions[i].slug
      });

      google.maps.event.addListener(marker, 'click', function() {
        console.log(marker);
        // window.open(regionUrl);
      });
    }
  }
  console.log(regions);

  google.maps.event.addDomListener(window, 'load', initialize);
});
