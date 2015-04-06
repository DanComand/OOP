class Rover

attr_accessor :x, :y, :direction

	def initialize(x, y, direction)
		@x = x
		@y = y
		@direction = direction
	end	

	def read_instruction(readinst)

		readinst.split("").each do |dir|
			if dir == "L"
				turn_left
			elsif dir == "R"
				turn_right
			elsif dir == "M"
				move_forward
			else puts == "I'm sorry Dave, I'm afraid I can't do that."		


			end	
		end	

		def move_forward
			if @direction == "N"
				@y += 1
			elsif @direction == "W"
				@x -= 1
			elsif @direction == "S"
				@y -= 1
			elsif @direction == "E"
				@x += 1
			end	
		end

		def turn_left
			if @direction == "N"
				@direction = "W"						
			elsif @direction == "W"
				@direction = "S"
			elsif @direction == "S"
				@direction = "E"
			elsif @direction == "E"
				@diection = "N"
			end	 		 
		end				
			
		def turn_right
			if @direction == "N"
				@direction = "E"
			elsif @direction == "W"
				@direction = "N"
			elsif @direction == "S"
				@direction= "W"
			elsif @direction == "E"
				@direction = "S" 			
			end								
		end	
	end

	def to_s
		"I am located at #{@x}, #{@y}, facing #{@direction}."

	end
end

rover_dan1 = Rover.new(1,2,"N")
puts rover_dan1

puts "Input commands for Rover 1"
read_instruction



# rover_dan2 = Rover.new(3, 3, "E" )
# puts rover_dan2







						