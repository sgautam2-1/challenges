class Student 
    def instance_greeting
        puts "Hello, this is an instance method! "


    end 
    def self.class_greeting
        puts "I am a class method!"
    end
end 

bob = Student.new

bob.instance_greeting

Student.class_greeting


