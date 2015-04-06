class Person

	def initialize(name)

		@name = name
	end



	def greeting

		puts "Hi, my name is #{@name}."

	end


end

class Students < Person

	def learn

		puts "I get it!"

	end



end

class Instructor < Person

	def teach

		puts "Everything in Ruby is an Object."

	end

end

i = Instructor.new("Chris")

i.greeting

s = Students.new("Cristina")

s.greeting


