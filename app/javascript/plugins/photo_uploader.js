const initPhotoUpload = () => {
  const input = document.getElementById("complaint_picture");
  const photoContainer = document.getElementById("attached");
  if (input) {
      input.addEventListener("change", (event) => {
      var reader = new FileReader();
      reader.onload = () => {
          photoContainer.src = reader.result;
      }
      reader.readAsDataURL(event.target.files[0]);
    });
  }
}

export default initPhotoUpload;
