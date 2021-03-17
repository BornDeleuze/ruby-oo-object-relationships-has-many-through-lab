class Patient
    
    attr_accessor :patient
    attr_reader :name, :date, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def new_appointment(date, doctor)
        date = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        self.appointments.collect {|appointment| appointment.doctor}
    end

    def self.all
        @@all
    end

end
