#------------------------------------------------------------------------------------------------------------------------
module PersonalDetails
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def about
    "Hi, my name is #{name}, and I am #{age} years old."
  end
end



# Base Class

class Person
  include PersonalDetails
end


  #------------------------------------------------------------------------------------------------------------------------
  # Child Class
  class Doctor < Person
    attr_accessor :position

    def initialize(name, age, position)
      super(name, age)
      @position = position
    end

    def about
      "Hii, I am Dr. #{name} and my specialization is #{position}."
    end
  end


  class Patient < Person
    attr_accessor :diesease

    def initialize(name, age, disease)
      super(name, age)
      @disease = disease
    end

    def about
      "Hii, I'm #{name}, and i have symptoms of #{disease}."
    end

  end


  class Nurse < Person
    def initialize(name, age, ward)
      super(name, age, "Nurse in #{ward}")
    end
  
    def about
      "Nurse #{name} is assisting in the #{position} ward."
    end
  end


  class Receptionist < Person

    def initialize(name, age)
      super(name, age, "Receptionist")
    end

    def appointment(patient_name, doctor_name)
      "#{patient_name} has scheduled appointment with #{doctor_name}."

    end

  end

#------------------------------------------------------------------------------------------------------------------------


#------------------------------------------------------------------------------------------------------------------------

  doctor = Doctor.new("Smith", 45, "ortho")
  puts doctor.about

  nurse = Nurse.new("Emily", 32, "general")
  puts nurse.about


  receptionist = Receptionist.new("Linda", 28)
  puts receptionist.appointment("John Doe", "Smith")
