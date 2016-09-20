//= require jquery
$(document).ready(function() {
  var map;
  var infowindow;

  function initialize() {
      var latitude = $("div[id='map']").attr("data-latitude"),
          longitude = $("div[id='map']").attr("data-longitude");

      var center = new google.maps.LatLng(latitude, longitude);
      map = new google.maps.Map(document.getElementById('map'), {
          center: center,
          zoom: 11
      });

      var request = {
          location: center,
          radius: 16000,
          types: ['campground']
        };
      infowindow = new google.maps.InfoWindow();

      var service = new google.maps.places.PlacesService(map);
      service.nearbySearch(request, callback);
    }

    function callback(results, status) {
      if (status == google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
          createMarker(results[i]);
        }
     }
  }

    function createMarker(place) {
      var placeLoc = place.geometry.location;
      var marker = new google.maps.Marker({
        map: map,
        position: place.geometry.location
      });

      google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name);
        infowindow.open(map, this);
      });
  }

      google.maps.event.addDomListener(window, 'load', initialize)
      console.log('i ran after');

})
$(function() {

});
