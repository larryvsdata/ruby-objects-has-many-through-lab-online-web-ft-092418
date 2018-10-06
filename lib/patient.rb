class Patient
  attr_accessor :name , :patients, :appointments
  
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
   @patients = []
   @appointments = []
  end
  
  def self.all
    @@all
  end
  
  
   def new_appointment(patient, date)
    appointment = Appointment.new(date, patient ,self)
    @patients << patient
    @appointments << appointment
    appointment
  end
  
end