# RUBY - Check the given number is Lychrel or is not?

def reverseNumber(num)
	reverse = 0

	while num > 0
		remainder = num % 10
		reverse = (reverse * 10) + remainder
		num /= 10
	end	
	return reverse
end

def isPalindrome(num)
	return num == reverseNumber(num)
end

def isLychrel(num)
	maxIter = 25

	i = 0
	while i < maxIter
		num = num + reverseNumber(num)
		if isPalindrome(num)
			return false
		end
		i += 1
	end
	return true
end

print "Enter a number for checking Lychrel: "
number = gets.chomp.to_i
puts "#{number} is Lychrel? : #{isLychrel(number)}"


