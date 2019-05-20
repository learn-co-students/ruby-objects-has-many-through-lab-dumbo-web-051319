class Doctor

  attr_reader :name, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select do |s|
      s.doctor == self
    end
  end

  def patients
   appointments.map do |s|
      s.patient
   end
  end

  def self.all
    @@all
  end
  
end
