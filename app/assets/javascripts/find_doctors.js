var symptoms = document.getElementById("appointment_symptoms");
var doctorId = document.getElementById("appointment_employee_id");
var myForm = document.getElementById("myAppointment");

symptoms.addEventListener("click", function(){
  $.ajax({
    url: "/doctor?symptoms=" + symptoms.value,
    type: "GET",
    // dataType: "html"
    dataType: 'json',
    success: function(res){
      doctorId.value = res
      console.log(res)
    }
  })
})

// state.addEventListener("change", function(){
//   $.ajax({
//     url: "/cities?symptoms=" + symptoms.value + "&state=" + state.value,
//     type: "GET"
//   })
// })
