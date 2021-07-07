class Patient
  attr_accessor :name, :doctor, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @doctor = doctor
    @appointments = appointments
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)

  end

  def appointments
    Appointment.all.select do |appt|

      appt.patient == self
    end
  end

  def doctors
    appointments.collect do |appt|
      appt.doctor

    end
  end


end
