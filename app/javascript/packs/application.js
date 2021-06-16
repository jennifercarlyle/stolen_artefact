// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
// External imports
// import "<%= File.join(Gem.loaded_specs['social-share-button'].full_gem_path, 'app', 'assets', 'javascripts', 'social-share-button.coffee') %>"
import 'mapbox-gl/dist/mapbox-gl.css';
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
import { initMapbox } from '../plugins/init_mapbox';
import { initSweetalert } from '../plugins/init_sweetalert';

document.addEventListener('turbolinks:load', () => {
  initMapbox();
  initSweetalert('#sweet-alert-submission', {
    title: "Thanks for reaching out",
    text: "Our team of experts will review your submission and hopefully add your artefact to the site very soon!",
    icon: "success"
  }, (value) => {
    if (value) {
      const link = document.querySelector('#real-form-submission');
      link.click();;
    }
  });
})
