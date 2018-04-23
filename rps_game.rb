# Rock - Paper - Scissors Game;

loop do
	options = %w(rock paper scissors)
	cpu = options[rand(options.length)]

	print "What's your choice?: "
	user = gets.chomp.downcase

	while !(options.include?(user))
		puts "\nInvalid choice,enter Rock, Paper or Scissors"
		print "What's your choice?: "
		user = gets.chomp.downcase
	end

	if options.include?(user)
		if user == cpu
			puts "We got the same, lets keep trying"
		elsif (user == "rock" && cpu == "scissors")
			puts "Computer choice is: " + cpu + " , you win! :)"
		elsif (user == "rock" && cpu == "paper")
			puts "Computer choice is: " + cpu + " ,computer wins :("
		elsif (user == "paper" && cpu == "scissors")
			puts "Computer choice is: " + cpu + " ,computer wins :("
		elsif (user == "paper" && cpu == "rock")
			puts "Computer choice is: " + cpu + " , you win! :)"
		elsif (user == "scissors" && cpu == "rock")
			puts "Computer choice is: " + cpu + " ,computer wins :("
		elsif (user == "scissors" && cpu == "paper")
			puts "Computer choice is: " + cpu + " , you win! :)"
		end
		print "\nWanna play again?(yes/no): "
		answer = gets.chomp.downcase

		break if answer == "no"
	end
end


