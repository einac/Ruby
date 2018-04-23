#RUBY - A class example;

class Person

	def initialize(name)
		@name = name
	end

	def name
		@name
	end	

	def greeting(other)
		puts "Hi " + other.name + "! My name is " + self.name + "."
	end
end

person = Person.new("TheRubicNerd")
friend = Person.new("TheJavaception")

puts person.greeting(friend)
#=> Hi TheJavaception! My name is TheRubicNerd.
puts friend.greeting(person)
#=> Hi TheRubicNerd! My name is TheJavaception.

