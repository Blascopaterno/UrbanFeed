const complaintBtns = () => {

$(document).ready(function(){
  $(".collection_radio_buttons").click(function(){
    $(".collection_radio_buttons").removeClass("active");
    $(this).toggleClass("active");


  });
});
}

console.log()

export { complaintBtns}
