class Dog
   attr_accessor :name, :breed

    def initialize(name, breed)
         @name = name
         @breed = breed
    end
end

dog = Dog.new("Teddy" , "Germanshepard")
puts "#{dog.name} is a #{dog.breed}"




