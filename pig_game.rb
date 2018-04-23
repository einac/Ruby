# RUBY - Pig the Dice Game;

class PigGame
	Player = Struct.new(:name,:safescore,:score) do
		def bust!() self.score = safescore end
		def stay!()	self.safescore = score end
		def to_s() "#{name} (#{safescore}, #{score}" end
	end

	def initialize(names, maxscore=100, dieSides=6)
		rotation = names.map {|name| Player.new(name,0,0)}
		
		rotation.cycle do |player|
			loop do
				if wantsToRoll?(player)
					puts "Rolled: #{roll=rollDice(dieSides)}"
					if bust?(roll)
						puts "Busted!",''
						player.bust!
						break
					else
						player.score += roll
						if player.score >= maxscore
							puts player.name + " wins!"
							return
						end
					end
				else
					player.stay!
					puts "\nStaying with #{player.safescore}\n\n"
					break
				end
			end
		end
	end

	def rollDice(dieSides) rand(1..dieSides) end
	def bust?(roll) roll == 1 end
	def wantsToRoll?(player)
		print "#{player}: Roll? (Y) "
		['Y','y',''].include?(gets.chomp)
	end
end

PigGame.new( %w|TheRubicNerd TheJavaception| )


