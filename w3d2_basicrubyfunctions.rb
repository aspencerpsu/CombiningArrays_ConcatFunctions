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

  print "\n The maximum freq. from a word from the string is " <<  myHash.index(the_max) << " with a value of " << the_max.to_s()
end


StringRead("Hungry Hungry Hippos came to play at the swamp. \\
  To us the hippos have never been this hungry before. I hope the hippos \\
  brought plenty of swampwater. Hooray for hippos!");

class AkeemGameAdventure 
  attr_accessor :ammo, :daggers, :potions

  def initialize
    @ammo = 200
    @daggers = 100
    @potions = 25
  end

  def scene1
    puts "Akeem, Arnold Schwartzenegger and the guy from that rocky movie
          arrive to the planet DREADHEAD, the mission is to gather enough
          resource on this odd planet to fire the engine back up and running
          You send first class lieutenant Akeem to scope the land and see if there's
          any potential threats..."

    put "As you march through thick terrain of mud and fog, there's an enemy using
          a cloak who fired a laser beam weapon! Do you retreat or do you stand your 
            ground and use your weapons?"

    action = gets.chomp.downcase

    if action == "daggers"
      puts "How many daggers?"
      dagger_to_use = gets
      @daggers - daggers_to_use
      return "scene2"
    elsif action == "ammo"
      puts "How much ammo to waste the fool?"
      ammo_to_use = gets
      @ammo - ammo_to_use
      return "scene2"
    elsif action == "stand your ground"
      puts "you're losing conciousness from the
            amount of trauma and exhaustion
            you need more potion fluid before 
            to continue"
       puts "continue?"
      choice = gets.chomp.downcase
     if choice == "yes"
      @potions -= 1
      return 'scene1'
     else choice == "no"
        return "GAME OVER"
    else
      print "please follow along with the this linear game"
      return "scene1"
  end

  def scene2 
    puts "Now that you've been in rapid fire with these mysterious
          enemies, you radio in help from your cronies to destroy 
          these goons, but the radio is destroyed from the exchange
          of gunfire you had with that beast."
    puts "Out comes two more beasts!, what do you do? (stand your ground, ammo, or daggers?)"

    action = gets.chomp.downcase

    if action == "daggers"
      puts "How many daggers"
      daggers_to_use = gets.chomp
      daggers_to_use
      @daggers-daggers_to_use
      return "scene3"
    elsif action == "ammo"
      puts "How much ammunition should be used to"
      puts "waste these two suckers?"
      ammo_to_use = gets.chomp
      ammo_to_use
      @ammo-ammo_to_use
      return "scene3"
    elsif action == "stand your ground"
      puts "you're losing conciousness from 
            the amount of trauma you're losing 
            in the gunfight, move on or fight 
            the good fight?"
      choice = gets.chomp.downcase

      if choice == "yes"
        @potions -= 1
        return 'scene1'
      else choice == "no"
        return "GAME OVER"
    else
      print "please follow along with the this linear game"
      return "scene1"

  def start
    while @potions && @ammo && @daggers > 0
      # initialize the game/start the game
      puts "Welcome to Akeem's Adventures games!!!"
      scene1 
    end
  end

end

# run a new instance of the game by creating a varaible for the game:

game1 = AkeemGameAdventure.new

#Start the game now using the variable of the game

game1

      
