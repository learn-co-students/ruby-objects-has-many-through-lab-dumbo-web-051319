require "pry"
require "./lib/doctor.rb"
require "./lib/patient.rb"
require "./lib/appointment.rb"

binding.pry

doctor_s = Doctor.new("Doctor X!")
doctor_b = Doctor.new("Bruhle")
patient_s = Patient.new("Syverson")
appointment = Appointment.new("18 May 2019", patient_s, doctor_b)

# binding.pry
puts "'s been run'"
