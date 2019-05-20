class Patient

  attr_accessor :name
  @@all = []
  def initialize(name)
  @name = name
  @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select {|appointment_data| appointment_data.patient == self }
  end
  #
  def doctors
  appointments.map {|appointment_data| appointment_data.doctor}
  end

end
