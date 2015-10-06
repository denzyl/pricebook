console.log("Hey");
$(document).ready(
  function() {
$("input.cost")
  .keyup(function() {
    var value = $( this ).val();
    console.log(value);
  })
  .keyup();
$("input.quantity")
  .keyup(function() {
    var value2 = $( this ).val();
    console.log(value2);
  })
  .keyup();


});


