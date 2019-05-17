class Patient
  @@all = []
  attr_accessor :name, :doctor, :appointment

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def doctors
    appointments.map {|appointment| appointment.doctor }
  end

  def self.all
    @@all
  end

end
#
# The Patient class needs an instance method, #appointments, that iterates through the Appointments array and returns Appointments that belong to the patient.
# The Patient class needs an instance method, #doctors, that iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
