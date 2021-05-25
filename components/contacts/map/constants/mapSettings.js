const POINT_MARKER_ICON_CONFIG = {
  path: 'M 0, 0 m -5, 0 a 5,5 0 1,0 10,0 a 5,5 0 1,0 -10,0',
  strokeOpacity: 0.7,
  strokeWeight: 4,
  strokeColor: '#32a852',
  fillColor: '#32a852',
  fillOpacity: 0.7,
  scale: 1,
}

const mapSettings = {
  clickableIcons: false,
  streetViewControl: false,
  panControlOptions: false,
  gestureHandling: 'cooperative',
  backgroundColor: '#32a852',
  mapTypeControl: false,
  zoomControlOptions: {
    style: 'SMALL',
  },
  zoom: 5,
  minZoom: 2,
  maxZoom: 10,
  styles: [
    {
      featureType: 'landscape',
      stylers: [
        { hue: '#32a852' },
        { saturation: 50.2 },
        { lightness: -34.8 },
        { gamma: 1 },
      ],
    },
    {
      featureType: 'poi',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'road.highway',
      stylers: [
        { hue: '#32a852' },
        { saturation: -19.8 },
        { lightness: -1.8 },
        { gamma: 1 },
      ],
    },
    {
      featureType: 'road.arterial',
      stylers: [
        { hue: '#32a852' },
        { saturation: 72.4 },
        { lightness: -32.6 },
        { gamma: 1 },
      ],
    },
    {
      featureType: 'road.local',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'transit',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.province',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.locality',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.province',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.land_parcel',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.neighborhood',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'administrative.country',
      elementType: 'geometry.stroke',
      stylers: [{ visibility: 'on' }, { color: '#32a852' }],
    },
    {
      featureType: 'administrative',
      elementType: 'labels',
      stylers: [{ visibility: 'off' }],
    },
    {
      featureType: 'water',
      stylers: [
        { hue: '#32a852' },
        { saturation: -63.2 },
        { lightness: 38 },
        { gamma: 1 },
      ],
    },
  ],
}

export { mapSettings, POINT_MARKER_ICON_CONFIG }
