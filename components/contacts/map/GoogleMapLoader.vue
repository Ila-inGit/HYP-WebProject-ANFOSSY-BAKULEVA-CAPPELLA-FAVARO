<template>
  <div>
    <div id="map" ref="googleMap" class="google-map"></div>
    <script>
      var map

      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {
            lat: 40.761619,
            lng: -433.984242,
          },
          zoom: Math.floor(Math.random(10) * 10),
        })
        addMarkerNewYork()
        addMarkerMilan()
      }

      // Function for adding a marker to the page in new york.
      function addMarkerNewYork() {
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(40.761619, -433.984242),
          map: map,
          animation: google.maps.Animation.BOUNCE,
        })
      }
      // Function for adding a marker to the page in milan.
      function addMarkerMilan() {
        marker = new google.maps.Marker({
          position: new google.maps.LatLng(45.467836, 9.155377),
          map: map,
          animation: google.maps.Animation.BOUNCE,
        })
      }
    </script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=&callback=initMap"
      async
      defer
    ></script>
  </div>
</template>

<script>
export default {}
</script>

<style scoped>
.google-map {
  width: 100%;
  min-height: 100%;
}
</style>
