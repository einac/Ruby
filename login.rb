# RUBY - Login Screen Example;

user_id = "therubicnerd"
password = "rubyscope"

count = 3
while count > 0

	print "\nUser ID: "
	id = gets.chomp
	print "Password: "
	pass = gets.chomp

	if user_id == id && password == pass
		puts "\nLogin Confirmed"
		break
	elsif user_id == id || password == pass
		puts "\nWrong User ID or Password!"
		count -= 1
	else
		puts "\nThis account ID not registered!"
		count -= 1
	end
	
	if count == 0
		puts "\nYour IP has blocked,Try again after 8 hours!"
		exit
	end
end	