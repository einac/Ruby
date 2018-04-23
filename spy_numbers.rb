# RUBY - Checking the given number is Spy Number or is not?

def isSpyNum(n)
	digits = n.to_s.split('')
	sum = 0
	multi = 1
	
	digits.each do |s|
		sum += s.to_i
		multi *= s.to_i
	end

	puts "Sum of digits: #{sum}"
	puts "Multiplication of digits: #{multi}"

	if sum == multi
		puts "=> #{n} is a Spy Number."
	else
		puts "=> #{n} is not a Spy Number."
	end
end

def main
	print "Please enter the value of n: "
	n = gets.chomp.to_i
	isSpyNum(n)
end
main