class Owner
  attr_reader :name, :species
  @@all= []
  @dogsowned = []
  @catsowned = []
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end 
  
  def say_species
     "I am a #{@species}."
  end
  def self.all
  @@all
 end
 def self.count
   @@all.count
 end
 def self.reset_all
   @@all.clear
 end
 def cats 
   Cat.all.collect {|kitty| kitty.owner == self}
 end
 def dogs
   Dog.all.collect {|doggy| doggy.owner == self}
 end
 def buy_cat(name)
 name =  Cat.new(name, self)
 name.owner = self
 @@catsowned << name
 end
 def buy_dog(name)
  name= Dog.new(name, self)
  name.owner = self
  @@dogsowned << name
 end
   def walk_dogs
     self.dogs.collect {|dog| dog.mood = "happy"}
   end
   def feed_cats
     self.cats.collect {|cat| cat.mood = "happy"}
 end
 def sell_pets
   @@dogs.owner.clear
   @@cats.owner.clear
 end
 
end