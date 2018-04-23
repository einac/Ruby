# RUBY - Get a term of the Fibonacci Sequence by recursive

def fibonacci(n)

	if n == 0 || n == 1
		n
	else
		fibonacci(n-1) + fibonacci(n-2)
	end
end

print "Enter index of term that you want to get: "
term_index = gets.chomp.to_i

puts fibonacci(term_index)