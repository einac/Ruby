#RUBY - Program to find sum of a series (a^1/1! + a^2/2!+...+a^n/n!);

def sumOfSeries(a,num)
	result = 0.0
	prev = 1
	for i in 1..num
		prev *= (a / i)
		result += prev
	end
	result
end

def main
	print "Enter the values of a and num: "
	values = gets.chomp.split
	a = values[0].to_f
	num = values[1].to_f
	
	puts "Sum: #{sumOfSeries(a,num)}"
end
main			
