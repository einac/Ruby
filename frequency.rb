# RUBY - Finding Repeating Words' Frequency

text = "Peter Piper picked a peck of pickled peppers.
Did Peter Piper pick a peck of pickled peppers?
If Peter Piper picked a peck of pickled peppers,
where's the peck of pickled peppers Peter Piper picked?"

frequency = Hash.new

text.split.each do |letters|

	letters.delete!'.,;?'
	letters.downcase!

	frequency[letters] ||= 0
	frequency[letters] += 1
end

puts frequency
