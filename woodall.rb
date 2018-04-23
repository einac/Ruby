# RUBY - First n-th term of Woodall Numbers;

def woodallNums(n)
	woodall = []
	i = 0
	while i < n
		woodall << (i * (2 ** i) - 1)
		i += 1
	end
	woodall
end

def main
	print "Enter the value of n: "
	value = gets.chomp.to_i
	puts "First #{value}th terms of Woodall Numbers: "
	p woodallNums(value)
end
main	

