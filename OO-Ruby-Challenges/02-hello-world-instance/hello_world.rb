# hello_world.rb
class HelloWorld
    def initialize(name)
      @name = name
    end
  
    def hello(other_name = nil)
      if other_name
        "Hello, #{other_name}. My name is #{@name}!"
      else
        "Hello, World. My name is #{@name}!"
      end
    end
  end
  