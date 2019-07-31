const initPhotoUpload = () => {
  const input = document.getElementById("complaint_picture");
  const photoContainer = document.getElementById("attached");
  if (input) {
      photoContainer.classList.add("invisible");
      input.addEventListener("change", (event) => {
      var reader = new FileReader();
      reader.onload = () => {
          photoContainer.src = reader.result;
          photoContainer.classList.remove("invisible");
      }
      const file = event.target.files[0];
      if (file) {
        reader.readAsDataURL(file);
      }
    });
  }
}

export default initPhotoUpload;
