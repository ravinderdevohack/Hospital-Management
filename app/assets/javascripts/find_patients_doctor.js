var syndrome = document.getElementById("patient_syndrome_id");
var patientDoctorId = document.getElementById("patient_employee_id");
var patientAdmitDate = document.getElementById("patient_addmit_date");

syndrome.addEventListener('click', function(){
  $.ajax({
    url: `/patient_doctor?syndrome=${syndrome.value}`,
    type: 'GET',
    success: function(res){
      patientDoctorId.value = res
      console.log(res)
    }
  })
})


