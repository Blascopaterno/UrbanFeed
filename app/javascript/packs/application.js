import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';
import { complaintBtns } from '../components/complaint_btns';
import {initAutocomplete} from '../plugins/init_autocomplete'

initMapbox();
initAutocomplete();

complaintBtns();
