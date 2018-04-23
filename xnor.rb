#RUBY - XNOR of two numbers;

def xnor(a,b)
	if a < b # make sure a is larger;
		temp = a
		a = b
		b = temp
	end
	if (a == 0 and b == 0)
		return 1
	end	
	a_rem = 0
	b_rem = 0
	count = 0
	xnornum = 0
	while a != 0
		a_rem = a & 1
		b_rem = b & 1
		if a_rem == b_rem
			xnornum |= (1 << count)
		end
		count += 1
		a >>= 1
		b >>= 1
	end
	return xnornum		
end

print "Enter values of a and b: "
values = gets.chomp.split
a = values[0].to_i
b = values[1].to_i
puts "#{a} XNOR #{b} = #{xnor(a,b)}"