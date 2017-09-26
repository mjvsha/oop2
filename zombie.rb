class Zombie

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

  if self.outrun_zombie == true
    puts "YOU LIVE TO SEE ANOTHER DAY"
  elsif self.outrun_zombie == false
    puts "Shit you are not able to outrun the zombie !!! You have to fight bitch!!"
    if self.survive_attack? == false
      puts "DAMN....YOU DIED"
    else
      you_become_one = Zombie.new(rand(@@max_speed), @@max_strength)
      @@horde << you_become_one
      puts "YOU BECOME A ZOMBIE"
    end
  end

end


  #get killed
  #become zombie




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
  #call some_die_off
  #call spawn
  #call increase_plague_level
  #these methods will interact with each other to represent a new day in the apocalyspe


end

def self.some_die_off
#generate a random number from 0 to 10
some_die = rand(11)
#remove that number from the array of zombies in the horde


end

def self.spawn
  #use @@plague_level to geenrate a random number
  random_spawn = rand(@@plague_level)
    random_spawn.times do |zombie|
      zombie = Zombie.new(rand(@@max_speed), rand(@@max_strength))
      @@horde << zombie
    end



  #create that number of zombies


  #add each one to horde


end

def self.increase_plague_level
  #increase the plague level
  increase_level = rand(3)
  @@plague_level += level

end




end
