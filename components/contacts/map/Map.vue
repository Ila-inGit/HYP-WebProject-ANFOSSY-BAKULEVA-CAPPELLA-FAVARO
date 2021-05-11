<template>
  <GoogleMapLoader :map-config="mapConfig" api-key="">
    // insert your google maps api key to render styled map
    <template slot-scope="{ google, map }">
      <GoogleMapMarker
        v-for="marker in markers"
        :key="marker.id"
        :marker="marker"
        :google="google"
        :map="map"
      />
    </template>
  </GoogleMapLoader>
</template>

<script>
import { mapSettings } from '~/components/contacts/map/constants/mapSettings'
import GoogleMapLoader from '~/components/contacts/map/GoogleMapLoader.vue'
import GoogleMapMarker from '~/components/contacts/map/GoogleMapMarker.vue'

export default {
  components: {
    GoogleMapLoader,
    GoogleMapMarker,
  },

  data() {
    return {
      markers: [
        {
          id: 'a',
          position: { lat: 3, lng: 101 },
        },
        {
          id: 'b',
          position: { lat: 5, lng: 99 },
        },
        {
          id: 'c',
          position: { lat: 6, lng: 97 },
        },
      ],
    }
  },

  computed: {
    mapConfig() {
      return {
        ...mapSettings,
        center: this.mapCenter,
      }
    },

    mapCenter() {
      return this.markers[1].position
    },
  },
}
</script>
