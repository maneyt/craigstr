//markers = handler.addMarkers(<%=raw @hash.to_json %>);
$(function(){
  handler = Gmaps.build('Google');
  handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){
    markers = handler.addMarkers([
      {
        "lat": "42.3584308",
        "lng": "-71.0636",
        "picture": {
          "url": "http://www.googlemapsmarkers.com/v1/009900/",
          "width":  36,
          "height": 36
        },
        "infowindow": "hello!"
      }
    ]);
    handler.bounds.extendWith(markers);
    handler.fitMapToBounds();
    handler.getMap().setZoom(10);
  });
});

