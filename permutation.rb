# RUBY - All permutations of an user input;

def permutation(a,i = 0)
	
	if i == a.size
		p a
	end

	(i...a.size).each do |j|
		a[i], a[j] = a[j], a[i]
		permutation(a, i+1)
		a[i], a[j] = a[j], a[i]
	end

end

def main

	print "Enter a word or a number: "
	input = gets.chomp.to_s

	permutation(input)
end

main	

