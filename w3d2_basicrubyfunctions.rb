def StringRead(string)
  myHash = {}
  array = string.downcase.split(' ');
  print array

  i = 0;
  while i<array.length

  	if myHash.has_key?(array[i]) == true 		
  		myHash[array[i]] += 1;
  	else
		myHash[array[i]] = 1;
	end
	i += 1;	
  end
  print myHash
  # myHash[":{@array}"]
  print "\n"
  puts myHash

  the_max = myHash.values.max

  print "The maximum freq. from a word from the string is " <<  myHash.index(the_max) << " with a value of " << the_max.to_s()
end


StringRead("Hungry Hungry Hippos came to play at the swamp. \\
  To us the hippos have never been this hungry before. I hope the hippos \\
  brought plenty of swampwater. Hooray for hippos!");


