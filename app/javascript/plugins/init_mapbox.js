
import mapboxgl from 'mapbox-gl';
import * as turf from '@turf/turf';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    // style: 'mapbox://styles/mapbox/streets-v10'
    style: 'mapbox://styles/jamesm122/ckpo67q2x026817n0wia2tz2o'
  });
      return map
};

const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  if (mapElement) {
    const map = buildMap(mapElement);
    const markers = JSON.parse(mapElement.dataset.markers);
    drawLinesFromOrigin(map, markers);
    addMarkersToMap(map, markers);
    // curvedLinesFromOrigin(map, markers);
    fitMapToMarkers(map, markers);
  }
};


const addMarkersToMap = (map, markers) => {
  markers.forEach((marker) => {
    const popup = new mapboxgl.Popup().setHTML(marker.info_window); // add this
    const element = document.createElement('div');
  element.className = 'marker';
  element.style.backgroundImage = `url('${marker.image_url}')`;
  element.style.backgroundSize = 'contain';
  element.style.border = '3px solid coral';
  element.style.borderRadius = '50%';
  element.style.width = '45px';
  element.style.height = '45px';
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      .setPopup(popup) // add this
      .addTo(map);
  });
};


const drawLinesFromOrigin = (map, markers) => {
  map.on('load', function () {
  map.addSource('route', {
  'type': 'geojson',
  'data': {
  'type': 'Feature',
  'properties': {},
  'geometry': {
    'type': 'MultiLineString',
    'coordinates': markers.map((marker) => { return [[markers[markers.length -1].lng, markers[markers.length -1].lat], [marker.lng, marker.lat] ]})
      }
    }
  });
  map.addLayer({
    'id': 'route',
    'type': 'line',
    'source': 'route',
      'layout': {
      'line-join': 'round',
      'line-cap': 'round'
     },
      'paint': {
      'line-color': 'coral',
      'line-width': 3
      }
    });
  });
}

export { initMapbox };
