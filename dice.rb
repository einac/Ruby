# Program to learn what means values of dice in Persian;

def rollDice
	rand(1..6)
end

def check arg
	arg == "Y" || arg == "y" ? m = list() : (arg == "N" || arg == "n" ? m = nil : m = "You did a mistake!")
	m
end

def list
	<<-LIST
	Yek    --> 1
	Dü     --> 2
	Se     --> 3
	Cihar  --> 4
	Penç   --> 5
	Şeş    --> 6
	LIST
end

def translatePersian(dice)
	case dice
	when 1; k = "Yek"
	when 2; k = "Dü"
	when 3; k =	"Se"
	when 4; k = "Cihar"
	when 5; k = "Penç"
	when 6; k = "Şeş"
	end
	k
end

def result(dice1,dice2)
	e = translatePersian(dice1)
	f = translatePersian(dice2)
	return e,f
end

def main
	a = rollDice()
	b = rollDice()

	puts result(a,b)
	puts "Would you like to see the values of dice in Persian?(Y/N)"
	choice = gets.chomp
	puts check(choice)
end
main				




