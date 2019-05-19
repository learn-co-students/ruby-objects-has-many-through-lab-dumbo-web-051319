class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appointment|
      appointment.patient == self
    }
  end

  def doctors
    Appointment.all.collect { |appointment|
      if appointment.patient == self
        appointment.doctor
      end
    }
  end

  def self.all
    @@all
  end
end
