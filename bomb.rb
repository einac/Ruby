#RUBY - The countdown of a planted bomb;

puts "The bomb has planted"
sleep(0.5)
time = 10
while time >= 0
	puts "#{time} seconds left!"
	sleep(1)
	time -= 1
end
puts "\nBOOOOM !!!"