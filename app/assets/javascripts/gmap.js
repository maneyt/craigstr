$(document).ready(function(){
  function initialize() {
    var defaultLat = 30;
    var defaultLng = 0;
    var mapOptions = {
      center: new google.maps.LatLng(defaultLat, defaultLng),
      zoom: 2
    };
    var map = new google.maps.Map(document.getElementById("map-canvas"),
      mapOptions);
    for(var i = 0; i< regions.length; i++){
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(regions[i].latitude, regions[i].longitude),
        map: map,
        url: "http://" + location.host + "/" + regions[i].slug
      });
      makeClickEvent(marker);
    }
  }
  function makeClickEvent(marker){
    google.maps.event.addListener(marker, 'click', function() {
      location.href = marker.url;
    });
  }
  google.maps.event.addDomListener(window, 'load', initialize);
});
