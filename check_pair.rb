# RUBY - Checking pair with sum equal to given value;

def check_pair(array,x)
    len = array.length
    flag = false
    map = Hash.new()
    
    for i in 0...len
        t = x - array[i]
		if map[t]
			flag = true
			break
		end
    	map[array[i]] = 1
    end
    
    if flag
        return "Array has two elements with sum: #{x}"
    else
        return "Array doesn't have two elements with sum: #{x}"
    end
end

puts check_pair(Array.new(10){rand(1..25)},rand(1..25))