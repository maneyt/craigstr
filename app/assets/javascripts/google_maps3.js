$(function(){
  $("#map_canvas").gmap3().width("900px").height("300px").gmap3({trigger:"resize"});
  $("#map_canvas").gmap3({ marker:{ latLng: [48.8620722, 2.352047] },
  map:{ options:{ zoom: 5 }} 
  });
});
