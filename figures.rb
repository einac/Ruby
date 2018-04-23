# RUBY - Numbers with letters;

figures = %w(zero one two three four five six seven eight nine)

print "Enter a number: "
number = gets.chomp

number.split.each_with_index do |s,i|
	
	for i in 0...s.size
		print "#{figures[s[i].to_i]} "
	end	
end