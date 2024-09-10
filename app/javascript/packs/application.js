import Rails from "@rails/ujs";
import Turbolinks from "turbolinks";
import * as ActiveStorage from "@rails/activestorage";
import "channels";

import "bootstrap"; // Import Bootstrap JS
import "popper.js"; // Import Popper for Bootstrap tooltips, popovers, etc.

import $ from "jquery"; // Import jQuery
window.$ = $; // Makes jQuery globally accessible

Rails.start();
Turbolinks.start();
ActiveStorage.start();
