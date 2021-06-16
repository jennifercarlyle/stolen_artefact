
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
    // drawLinesFromOrigin(map, markers);
    markers.slice(0,3).forEach ((marker, i) => {
      animateMultiLines(map,  [[markers[markers.length -1].lng, markers[markers.length -1].lat], [marker.lng, marker.lat] ], i)
    })
    // animateMultiLines(map, [[markers[markers.length -1].lng, markers[markers.length -1].lat], [markers[0].lng, markers[0].lat]],)
    drawLinesFromOrigin(map, markers);
    addMarkersToMap(map, markers);
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
  'line-width': 4
  }
  });
  });
}

const animateMultiLines = (map, markerGroup, i) => {
  const destination = markerGroup[1];
  const origin = markerGroup[0];
  const route = {
    'id': `${i}route`,
    'type': 'FeatureCollection',
    'features': [
      {
      'type': 'Feature',
      'geometry': {
        'type': 'LineString',
        'coordinates': [origin, destination]
        }
      }
    ]
  };
  console.log(route)
  const point = {
    // 'id': `${i}point`,
    'type': 'FeatureCollection',
    'features': [
      {
      'type': 'Feature',
      'properties': {},
      'geometry': {
        'type': 'Point',
        'coordinates': origin
        }
      }
    ]
  };
  var lineDistance = turf.length(route.features[0]);
  const arc = [];
  const steps = 500;
  for (var i = 0; i < lineDistance; i += lineDistance / steps) {
    var segment = turf.along(route.features[0], i);
    arc.push(segment.geometry.coordinates);
  }

  // Update the route with calculated arc coordinates
  route.features[0].geometry.coordinates = arc;

  // Used to increment the value of the point measurement against the route.
  var counter = 0;
  map.on('load', function () {
// Add a source and layer displaying a point which will be animated in a circle.
    map.addSource(`${i}route`, {
    'type': 'geojson',
    'data': route
    });

    map.addSource(`${i}point`, {
    'type': 'geojson',
    'data': point
    });

    map.addLayer({
    'id': `${i}route`,
    'source': `${i}route`,
    'type': 'line',
    'paint': {
    'line-width': 3,
    'line-color': 'coral'
    }
    });

    map.addLayer({
    'id': `${i}point`,
    'source': `${i}point`,
    'type': 'symbol',
    'layout': {
    // This icon is a part of the Mapbox Streets style.
    // To view all images available in a Mapbox style, open
    // the style in Mapbox Studio and click the "Images" tab.
    // To add a new image to the style at runtime see
    // https://docs.mapbox.com/mapbox-gl-js/example/add-image/
    'icon-image': 'landmark-15',
    'icon-rotate': ['get', 'bearing'],
    'icon-rotation-alignment': 'map',
    'icon-allow-overlap': true,
    'icon-ignore-placement': true
    }
    });


  function animate(reanimate) {
    var start =
    route.features[0].geometry.coordinates[
      counter >= steps ? counter - 1 : counter
    ];
    var end =
    route.features[0].geometry.coordinates[
      counter >= steps ? counter : counter + 1
    ];
    if (!start || !end) return;

    // Update point geometry to a new position based on counter denoting
    // the index to access the arc
    point.features[0].geometry.coordinates =
    route.features[0].geometry.coordinates[counter];

    // Calculate the bearing to ensure the icon is rotated to match the route arc
    // The bearing is calculated between the current point and the next point, except
    // at the end of the arc, which uses the previous point and the current point
    point.features[0].properties.bearing = turf.bearing(
      turf.point(start),
      turf.point(end)
    );

    // Update the source with this new data
    map.getSource(`${i}point`).setData(point);

    // Request the next frame of animation as long as the end has not been reached
    if (counter < steps) {
      requestAnimationFrame(animate);
    }

    counter = counter + 1;
    if (counter >= 499){
      counter = 0
      reanimate
    }
  }

  animate(animate);
});
}

export { initMapbox };
