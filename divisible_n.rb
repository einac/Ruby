# RUBY - Smallest Number with sum of digits as n, 
# and divisible by 10^n;

def digitsNumbers(a)
	if a == 0
		puts "0"
	elsif (a % 9) != 0
		print (a % 9)
	end

	i = 1
	while i <= (a / 9)
		print "9"
		i += 1
	end
	
	j = 1
	while j <= a	
		print "0"
		print ""
		j += 1
	end
end

def main
	print "Enter value of N: "
	n = gets.chomp.to_i

	print "The number is : "
	digitsNumbers(n)
end
main	