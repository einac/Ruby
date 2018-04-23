# RUBY - Program to find(Least Common Multiple) LCM two numbers;

def gcd(a, b)
	if a == b
		return a
	elsif a > b
		return gcd(a-b, b)
	else
		return gcd(a, b-a)
	end
end

def lcm(a, b)
	return (a * b) / gcd(a, b)
end

print "Enter you want to find LCM two numbers: "
numbers = gets.chomp.split
a = numbers[0].to_i
b = numbers[1].to_i

print "LCM of #{a} and #{b} is #{lcm(a,b)}"