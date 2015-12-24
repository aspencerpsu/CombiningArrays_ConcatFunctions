def rotate(array, n)
	# If the absolute value of the "n" is positive shift right 
	if n.abs/n == 1
		g = 0
		# do until the number is moved to the right
		while g < n 
			x = array.pop()
			# insert the popped value into the first array item
			array.insert(0,x)
			g += 1
		end
		puts '\n'
		print array
	else
		g = 0
		while g < n.abs
			# insert the popped value of the first array into the last element
			x = array.shift()
			array.insert(-1,x)
			g += 1
		end
		puts '\n'
		print array
	end
end

rotate(['cat', 'mouse', 'rabbit', 'dear'], 2)
print
rotate([1,2,3,4,5,6], -2)
rotate(['monkeys', 'alligators','tigers','bears','zebras', 'ponies'], 3)

def factorial(number)
	# Init the counter with a number one less than the original to start
	deinc = number-1
	for i in 1..number 
		# The number will always multiply by the next interation of the deinc
		number *= deinc
		deinc -= 1
		# return false if deinc == 0
		if deinc == 0 
			puts
			print number
		else 
			# continue with the next step within the factorial 
			next
		end
	end
end


factorial(4)


