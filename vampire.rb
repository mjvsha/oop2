class Vampire

  @@coven = []
  def initialize(name, age)

    @name = name
    @age = age
    @in_coffin = true
    @drank_blood_today = false


  end

  def self.create(name, age)

    @@coven << Vampire.new(name, age)


  end

  def drink_blood
    #sets drank_blood_today to true

    @drank_blood_today = true


  end


  def self.sunset
    #removes coven vampires who are not in their coffins & vampires that havent drunk blood
    #therefore should iterate through the array of vampires and then check the instance variales for their values
    @@coven.each do |vampire|

      vampire.drank_blood_false(false) && vampire.in_coffin_false(false)

    end
    @@coven
  end




  def in_coffin_false(okay)
    @in_coffin = okay
  end

  def drank_blood_false(okay)
    @drank_blood = okay
  end


  def drank_blood

    @drank_blood_today

  end


  def in_coffin

    @in_coffin

  end



  def self.sunrise
    #overrides the drank_blood_today and in_coffin to false for the entire coffin
    kicked_out = []
    @@coven.each do |vampire|
      if vampire.in_coffin == false || vampire.drank_blood_today == false
        kicked_out << vampire
      end
    end

    kicked_out.each do |vampire|
      @@coven.delete(vampire)
    end


  end


  def go_home

    @in_coffin = true

  end


  def self.coven

    @@coven


  end





end



bob = Vampire.create("bob", 6)
jill = Vampire.create("jill", 2)
harold = Vampire.create("harold", 11)
kumar = Vampire.create("kumar", 43)

puts Vampire.coven.inspect
puts "!!!!!!"

puts Vampire.sunset.inspect
