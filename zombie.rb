class Zombie

  #how to update @@plague_level

@@horde = []
@@plague_level = 10
@@max_speed = 5
@@max_strength = 8
@@default_speed = 1
@@default_strength = 3

def initialize(zombie_speed, zombie_strength)

  @zombie_speed = zombie_speed
  @zombie_strength = zombie_strength

  if zombie_speed > @@max_speed
    @zombie_speed = @@default_speed
  end

  if zombie_strength > @@max_strength
    @zombie_strength = @@default_strength
  end

end


def encounter
  #escape

  if self.outrun_zombie? == true
    puts "YOU LIVE TO SEE ANOTHER DAY"
  elsif self.outrun_zombie? == false
    puts "Shit you are not able to outrun the zombie !!! You have to fight bitch!!"
    if self.survive_attack? == false
      puts "DAMN....YOU DIED"
    else
      you_become_one = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << you_become_one
      puts "YOU BECOME A ZOMBIE"
    end
  end

end




def outrun_zombie?
  your_speed_atm= rand(@@max_speed)
  if your_speed_atm > @zombie_speed
    return true
  else
    return  false
  end


end

def survive_attack?
  fight_ability = rand(@@max_strength)
    if fight_ability > @zombie_strength
      return true
    else
      return false
    end

end

def self.all
  @@horde

end


def self.new_day
  #call spawn
  Zombie.spawn

  #call some_die_off
  Zombie.some_die_off

  #call increase_plague_level
  Zombie.increase_plague_level
  #these methods will interact with each other to represent a new day in the apocalyspe


end

#what if we have less than the number 10 in the horde?
def self.some_die_off
#generate a random number from 0 to 10
  some_die = rand(11)

  puts "This is the number of zombies that die off #{some_die}"
#remove that number from the array of zombies in the horde
  array = []

  array = @@horde.sample(some_die)

  array.each do |zombie|
    @@horde.delete(zombie)
  end

  puts @@horde

#COME BACK
end

def self.spawn
  #use @@plague_level to geenrate a random number
  random_spawn = rand(@@plague_level)
    random_spawn.times do |zombie|
      zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << zombie
    end
end


  #create that number of zombies


  #add each one to horde




def self.increase_plague_level
  #increase the plague level
  increase_level = rand(3)
  @@plague_level += increase_level
  puts "NEW PLAGUE LEVEL"
  puts @@plague_level
end




end





puts Zombie.all.inspect
puts Zombie.spawn.inspect
puts "!!!!!"
puts Zombie.all.inspect
puts Zombie.some_die_off
puts "AFTER DEATH"
puts Zombie.all.inspect

puts "NEW DAY"
puts Zombie.new_day
puts Zombie.spawn
puts Zombie.all.inspect

puts "&&&&&&&"

zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You got away
puts zombie2.encounter # You are now a zombie
puts zombie3.encounter

=begin
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5ebd0 @speed=4, @strength=0>, #<Zombie:0x005626ecc5eba8 @speed=0, @strength=4>, #<Zombie:0x005626ecc5eb80 @speed=4, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You are now a zombie
puts zombie2.encounter # You died
puts zombie3.encounter # You died
Zombie.new_day
puts Zombie.all.inspect # [#<Zombie:0x005626ecc5e1f8 @speed=0, @strength=0>, #<Zombie:0x005626ecc5e180 @speed=3, @strength=3>, #<Zombie:0x005626ecc5e158 @speed=1, @strength=2>, #<Zombie:0x005626ecc5e090 @speed=0, @strength=4>]
zombie1 = Zombie.all[0]
zombie2 = Zombie.all[1]
zombie3 = Zombie.all[2]
puts zombie1.encounter # You got away
puts zombie2.encounter # You are now a zombie
puts zombie3.encounter
=end
