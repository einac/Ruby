# RUBY - Toogle all odd bits;

def evenBitToggleNumber(n)
	result = 0
	count = 0
	temp = n

	while temp > 0
		# if bit is odd, then generate
		# number and or with result
		if (count % 2 == 0)
			result |= (1 << count)
		end
		count += 1
		temp >>= 1
	end
	return n ^ result
end

def main
	print "Enter decimal number: "
	decimal = gets.chomp.to_i
	print "Result: #{evenBitToggleNumber(decimal)}"
end
main

