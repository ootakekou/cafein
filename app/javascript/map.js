let map
function initMap(){
  geocoder = new google.maps.Geocoder()

  map = new google.maps.Map(document.getElementById('map'), {
    center: {lat: 35.6599313, lng:139.6957543},
    zoom: 15,
  });

  marker = new google.maps.Marker({
    position:  {lat: 35.6599313, lng:139.6957543},
    map: map
  });
}
  function codeAddress(){
    let inputAddress = document.getElementById('address').value;
  
    geocoder.geocode( { 'address': inputAddress}, function(results, status) {
      if (status == 'OK') {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location,
            zoom: 15,
        });
      } 
    });   
  }

window.addEventListener("load", initMap);
window.addEventListener("click", codeAddress);