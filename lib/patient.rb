class Patient
  attr_accessor :name , :appointments
  
  @@all = []
  
  def initialize(name)
   @name = name
   @@all << self
   
   @appointments = []
  end
  
  def self.all
    @@all
  end
  
  
   def new_appointment( date , doctor)
    appointment = Appointment.new(date, self , doctor)
    
    @appointments << appointment
    appointment.doctor = doctor
    appointment
  end
  
end