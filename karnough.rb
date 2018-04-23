#RUBY - Random 4x4 Karnough Maps

table1 = Array.new(16)

def createTable(a)
	
	k = (0...16).to_a
	i = 0
	while i < rand(k.size)
		t = k[rand(k.size)]
		a[t] = "1"
		k.delete(t)
		i += 1
	end
	j = 0
	while j < a.size - rand(k.size)
		if a[j] != "1"
			a[j] = "x"
		end	
		j += 1
	end
	n = 0
	while n < a.size
		if a[n] != "1" && a[n] != "x"
			a[n] = "0"
		end
		n += 1
	end		 
	return a
end
def printTable(a)
	print "\n"
	for i in 0...a.size
		printf("%-3s",a[i])
		if i % 4 == 3
			print "\n"
		end
	end
end
printTable(createTable(table1))

