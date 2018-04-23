# RUBY - Check if is the given number is Odious or not?

=begin 
	Odious number is a nonnegative number that has 
	an odd number of 1s in its binary expression.
	The first few odious numbers are; 1,2,4,7,8,11,13...
=end

def countSetBits(x)
	count = 0

	while(x != 0)
		x = x & (x - 1)
		count += 1
	end
	return count
end

def isOdious?(x)
	return countSetBits(x) % 2 == 1
end

print "Enter a nonnegative number: "
number = gets.chomp.to_i

if isOdious?(number)
	puts "=> #{number} is an odious number."
else
	puts "=> #{number} is not an odious number."
end