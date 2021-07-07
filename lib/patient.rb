class Patient
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
  
    @@all << self 
  end 
  
  def self.all 
    @@all << self 
  end 
  
  def new_appointment(doctor,date)
    appt = Appointment.new(self,date,doctor )
  end 
  
  def appointments 
    Appointment.all.select do |appt|
      appt.patient == self 
  end 
end 

  def doctors 
    Appointment.all.collect do |appt|
      appt.doctor
    end 
  end 
end 
