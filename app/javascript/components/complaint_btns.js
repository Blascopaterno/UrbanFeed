const complaintBtns = () => {

$(document).ready(function(){
  $(".collection_radio_buttons").click(function(){
    $(this).toggleClass("active");
  });
});
}

export { complaintBtns}
