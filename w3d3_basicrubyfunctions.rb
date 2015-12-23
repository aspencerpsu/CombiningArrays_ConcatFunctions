def rotate(array, n)
	if n.abs/n == 1
		g = 0
		while g < n 
			x = array.pop()
			array.insert(0,x)
			g += 1
		end
		print array
	else
		g = 0
		while g < n.abs
			x = array.shift()
			array.insert(-1,x)
			g += 1
		end
		print array
	end
end

rotate(['cat', 'mouse', 'rabbit', 'dear'], 2)
print
rotate([1,2,3,4,5,6], -2)
rotate(['monkeys', 'alligators','tigers','bears','zebras', 'ponies'], 3)

def factorial(number)
	while true
		for i in 1..number 
			deinc = number-1
			number *= decinc
			deinc -= 1
	  	if i == 0
	  		return false
	  	else
	  		break
	  	end
	end
end


puts factorial(18)


