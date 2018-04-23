class Door
	attr_reader :state

	def initialize
		@state = :closed
	end

	def close
		@state = :closed
	end
	
	def open
		@state = :open
	end
	
	def closed?
		@state == :closed
	end
	
	def open?
		@state == :open
	end
	
	def toogle
		closed? ? open : close
	end

	def to_s
		@state.to_s
	end
end

doors = Array.new(100) {Door.new}
1.upto(100) do |multi|
	doors.each_with_index do |door, i|
		door.toogle if (i + 1) % multi == 0
	end
end

doors.each_with_index { |door, i| puts "Door #{i+1} is #{door}."}

