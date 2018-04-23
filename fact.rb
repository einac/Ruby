# RUBY - How to pass a parameter from console?

def getPower(base,power)

	if power == 0
		1
	elsif power == 1
		base
	else
		base ** getPower(base, power-1)
	end
end

puts getPower(3,3)				