var syndrome = document.getElementById("appointment_syndrome_id");
var doctorId = document.getElementById("appointment_employee_id");
var appointmentDate = document.getElementById("appointment_date");
var appointmentTime = document.getElementById("appointment_time");
var availablilty = document.getElementById("available");


availablilty.addEventListener("click", function(){
    $.ajax({
      url: `/doctor?date=${ appointmentDate.value }+&syndrome=${ syndrome.value }+&appointment_time=${ appointmentTime.value}`,
      type: "GET",
      // dataType: "html"
      // dataType: 'html',
      // success: function(res){
      //   doctorId.value = res
      //   console.log(res)
      // }
    })
})
