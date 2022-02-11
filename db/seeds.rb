# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Specialist.create([{name: 'anesthesiologist'}, {name: 'cardiologist'}, {name: 'chiropractor'}, {name: 'dentist'}, {name: 'dermatologist'}, {name: 'gynecologist'}, {name: 'massage therapist'}, {name: 'naturopath'}, {name: 'obstetrician'}, {name: 'pediatrician'}, {name: 'General Practitioner'}, {name: 'Dentist'}  ])


# Syndrome.create([ {name: 'Back Pain', specialist_id: 3}, {name: 'Tooth Pain', specialist_id:4 }, {name: 'Skin Infection', specialist_id:5 }, {name: 'Women Needs', specialist_id:6 }, {name: 'Muscles Pain', specialist_id: 7}, {name: 'Pregnancy', specialist_id:9 }, {name: 'Cold and fever', specialist_id:11 } ])


# EmployeesSpecialist.create([{specialist_id:3 ,employee_id:1}, {specialist_id: 4,employee_id:1}, {specialist_id:4 ,employee_id:5}, {specialist_id: 5,employee_id:5}, {specialist_id:7 ,employee_id:9}, {specialist_id:9 ,employee_id:9}, {specialist_id:11 ,employee_id:7} ])


# Employee.update_all(shift_start_at:Time, shift_end_at:Time.now.strftime("%I:%M"))

# Slot.create!([{appointment_time: '10am-11am'}, {appointment_time: '11am-12am'}, {appointment_time: '12pm-1pm'}, {appointment_time: '1pm-2pm'}, {appointment_time: '2pam-3pm'}, {appointment_time: '3pm-4pm'}, {appointment_time: '4pm-5pm'}, {appointment_time: '5pm-6pm'} ])


# DoctorSlot.create([{employee_id: 1}, {employee_id: 5}, {employee_id: 7}, {employee_id: 9} ])

# DoctorSlot.update_all(date:Date.today)

