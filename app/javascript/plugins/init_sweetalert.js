import swal from 'sweetalert';

const initSweetalert = (selector, options = {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', (event) => {
      event.preventDefault();
      swal(options).then((result) => {
        const url = swalButton.href;
        window.location.href = url;
      });
    });
  }
};

export { initSweetalert };
