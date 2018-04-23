#RUBY - Cows&Bulls Game;

def randomNumber
	rndNumber = []
	digit = (0..9).to_a

	for i in 0..3
		if  i == 0
			k = digit[rand(1..9)]
			rndNumber.push(k)
		else
			k = digit[rand(digit.size)]
			rndNumber.push(k)
		end
		digit.delete(k)
	end
	rndNumber.join("")
end

def guessNumber
	guessed = []
	realNumber = randomNumber
	remainingGuess = 10

	while remainingGuess > 0
		print "\nGuess a 4-digit number with non-duplicate: "
		guess = gets.strip
		
		guessed << guess

		if guess.size == 4
			if guess == realNumber && remainingGuess == 10
				puts "Amazing! You guessed correctly in once."
				break
			elsif guess == realNumber && (remainingGuess < 10 || remainingGuess > 0)
				puts "You guessed the number correctly."
				break
			else
				cows = 0
				bulls = 0
				
				for i in 0..3
					if guess[i] == realNumber[i]
						bulls += 1
					elsif realNumber.include?(guess[i])
						cows += 1
					end
				end
				puts "Cows: #{cows} Bulls: #{bulls}"		
			end
		else
			puts "Wrong input! Please try again."
		end
		
		remainingGuess -= 1
		puts "\nRemaining Guess: #{remainingGuess}"

		if remainingGuess == 0
			puts "\nUnfortunately! You didn't guess correctly.The Number: #{realNumber}"
		end	
	end
end
puts guessNumber																		


