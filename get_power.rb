# RUBY - Get a power of a number by recursive;

def getPower(base,power)
	if power == 0
		1
	elsif power == 1
		base
	else
		base * getPower(base, power-1)
	end
end

print "Enter a base: "
base = gets.chomp.to_i
print "Enter a power: "
power = gets.chomp.to_i

print "Number is: #{getPower(base,power)}"