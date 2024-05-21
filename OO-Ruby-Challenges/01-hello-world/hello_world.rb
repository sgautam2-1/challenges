class HelloWorld
  def self.hello(name = 'World')
    "Hello, #{name}!"
  end
end

# Example calls to the method with output
puts HelloWorld.hello          
puts HelloWorld.hello('Alice') 
puts HelloWorld.hello('Bob')   
