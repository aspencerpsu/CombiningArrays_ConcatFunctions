#function prints out a concatenation of two strings

def AmericanFunction()
	string = "Where's the only place that has a clumsy billionaire running for president?"

	only = "\n \n only in America"

	this = string.concat(only)	

	print this			
end

#This function gives the users the max number within an array

def findthemax(array1 = [1,rand(1e7)])
	puts
	value = array1.max
	print "\n#{value}"
end


#This function takes two arguments as arrays and combines the
#two functions using the item from the first array as a key and the second
#key as an array into a hash.

#method to solve a combination using the each loop, Akeem Spencer
def array_to_dic(array1,array2)
	a_hash_list = {}
	array1.each do |item| 
		a_hash_list[item] = array2[array1.index(item)]
	end
	a_hash_list
	print "\n\n"
	puts a_hash_list
end


#alternative way to solve a combination 
#method for dictionarys using the while loop
def PlusArray(array1,array2)
  myHash = {}
  i = 0
  while i < array1.length
    myHash[array1[i]]=array2[i]
    i+=1
  end
  myHash
end

#if the mod of a number is equal to zero, print fizzbuzz with the following
#parameters
#
def FizzBuzz()
  for i in 1..100
    if i%3===0 && i%5===0
      print "\n"
      puts 'FizzBuzz'
    elsif i%3===0
    	print "\n"
      puts 'Fizz'
    elsif i%5===0
    	print "\n"
      puts 'Buzz'
    else
    	print "\n"
      puts i
    end
  end
end


AmericanFunction();
array_to_dic(["toyota", "honda"], ["prius", "civic"])
findthemax();
PlusArray();
FizzBuzz();
