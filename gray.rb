#RUBY - Decimal to Binary then Binary to Gray Code;

def toBinary(x)
	binary = []
	i = 0
	while x > 0
		binary[i] = x % 2
		x /= 2
		i += 1
	end
	binary.reverse
end

def toGray(x)
	gray = []
	bin = toBinary(x)

	gray[0] = bin[0]
	i = 1 
	while i < bin.size
		gray[i] = bin[i-1] ^ bin[i]
		i += 1
	end
	j = 0
	while j < i
		print gray[j]
		j += 1
	end	
end

print "Enter a decimal number you want convert to gray code: "
decimal = gets.chomp.to_i
print "#{decimal} = "
print toGray(decimal)	 

