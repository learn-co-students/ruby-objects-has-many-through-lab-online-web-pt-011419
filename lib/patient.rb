require "pry"

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
    #binding.pry
    Appointment.new(self, doctor, date)
  end
  
  def appointments
    #binding.pry
    Appointment.all.select do |a|
      a.patient == self 
    end
  end
  
  def doctors 
    #binding.pry
    appointments.collect do |a|
      a.doctor 
    end
  end
  
end