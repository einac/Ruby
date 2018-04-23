# RUBY - Prime numbers between 1 and n;

def primeNumbers(n)

	for number in 1...n
		count = 2
		flag = 0
		while count <= number
			if number % count == 0
				flag += 1
			end
			count += 1
		end
		
		if flag == 1
			puts number
		end			
	end
end

primeNumbers(100)	
