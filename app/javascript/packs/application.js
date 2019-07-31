import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { complaintBtns } from '../components/complaint_btns';
import {initAutocomplete} from '../plugins/init_autocomplete';
import mayorSelect from '../plugins/mayor_select';
import initPhotoUpload from "../plugins/photo_uploader";

initMapbox();
initAutocomplete("complaint_address");
initAutocomplete("complaint-address");
complaintBtns();
mayorSelect();
initPhotoUpload();

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Your email is sent!",
  text: "Time to fix the complaint!",
  icon: "success"
});
