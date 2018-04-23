# Program to print Fibonacci Triangle;

def fib(f,n)
	f[0] = 1
	f[1] = 1
	for i in 2...n
		f[i] = f[i-1] + f[i-2]
	end
end		

def fiboTriangle(n)
	sum = n * (n+1) / 2
	f = []
	fib(f,sum)
	fibonum = 0

	for i in 0...n
		for j in 0..i
			print "#{f[fibonum]} "
			fibonum += 1
		end
		print "\n"
	end
end

def main
	print "Enter n-th term of fibonacci sequence: "
	term = gets.chomp.to_i
	fiboTriangle(term)
end
main

