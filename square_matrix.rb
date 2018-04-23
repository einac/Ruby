# Program to display NxN sized square matrix that has random elements from 0 to 100;

def displayMatrix(a,n)
	a.each_with_index do |s,i|
		if i % n == 0
			print "|"
		end	
		print s.to_s.rjust(4)
		if i % n == n-1
			print " |\n"
		end
	end
end

def main
	print "Enter the the value of n: "
	n = gets.chomp.to_i
	puts "=> #{n}x#{n} square matrix:\n\n"
	arr = Array.new(n * n) {rand(100)}
	displayMatrix(arr,n)
end
main

