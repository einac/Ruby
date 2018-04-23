#RUBY - Palindrome Numbers An Iterval(m to n);

print "Enter m value: "
m = gets.chomp.to_i
print "Enter n value: "
n = gets.chomp.to_i

while m <= n

	reverseNumber = m.to_s.reverse.to_i

	if reverseNumber == m
		puts reverseNumber
	end
	m += 1
end
