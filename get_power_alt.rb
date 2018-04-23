=begin 
	RUBY - Getting parameters from console 
	to get a number's power by recursive ;
=end

def getPower(base,power)
	if power == 0
		1
	elsif power == 1
		base
	else
		base * getPower(base, power - 1)
	end
end

puts getPower(ARGV[0].to_i,ARGV[1].to_i)
