class Patient 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self
  end 
  
  
  def all 
    @@all
  end 
  
  def new_appointment(date, doctor)
    appointment = Appointment.new(self, doctor, date)
    appointment 
  end 
  
  def appointments 
    Appointments.all.select {|a| a.patient == self}
  end 
end 