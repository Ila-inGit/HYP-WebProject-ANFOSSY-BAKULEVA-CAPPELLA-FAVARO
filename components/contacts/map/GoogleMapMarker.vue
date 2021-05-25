/* eslint-disable no-new */ /* eslint-disable no-new */
<script>
import { POINT_MARKER_ICON_CONFIG } from '~/components/contacts/map/constants/mapSettings'

export default {
  props: {
    google: {
      type: Object,
      required: true,
    },
    map: {
      type: Object,
      required: true,
    },
    marker: {
      type: Object,
      required: true,
    },
  },

  mounted() {
    const { Marker } = this.google.maps

    // eslint-disable-next-line no-new
    new Marker({
      position: this.marker.position,
      marker: this.marker,
      map: this.map,
      icon: POINT_MARKER_ICON_CONFIG,
      animation: this.google.maps.Animation.BOUNCE,
      title: this.marker.label,
    })
  },

  render() {
    return 0
  },
}
</script>
