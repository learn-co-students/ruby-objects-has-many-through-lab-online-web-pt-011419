class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initalize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end


end
