import places from 'places.js';

const initAutocomplete = (id) => {
  const addressInput = document.getElementById(id);
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
