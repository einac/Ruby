# RUBY - Calculating the volume of a box by defining a class;

class Box
	attr_reader :width, :height, :length

	def initialize(width,height,length)
		@width = width
		@height = height
		@length = length
	end
	
	def calculateVolume
		width * height * length
	end
end

box = Box.new(6,10,14)

puts box.calculateVolume