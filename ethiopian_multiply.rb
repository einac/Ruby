# RUBY - Ethiopian Multiplication;

def halve(x) x / 2 end
def double(x) x * 2 end

# iterative solution
def ethiopianMultiply(a, b)
	product = 0
	while a >= 1
		p [a, b, a.even? ? "STRIKE" : "KEEP"] if $DEBUG
		product += b unless a.even?
		a = halve(a)
		b = double(b)
	end
	product
end

# recursive solution
def recEthiopianMultiply(a, b)
	return 0 if a < 1
	p [a, b, a.even? ? "STRIKE" : "KEEP"] if $DEBUG
	(a.even? ? 0 : b) + recEthiopianMultiply(halve(a), double(b))
end

def main
	$DEBUG = true	
	
	print "Enter the values of a and b in order: "
	val = gets.chomp.split
	a = val[0].to_i
	b = val[1].to_i

	puts "Iterative: "
	puts "=> #{a} * #{b} = #{ethiopianMultiply(a,b)}"; puts
	puts "Recursive: "
	puts "=> #{a} * #{b} = #{recEthiopianMultiply(a,b)}"; puts 
end
main

