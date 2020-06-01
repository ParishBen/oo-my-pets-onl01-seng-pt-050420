class Owner
  attr_reader :name, :species
  @@all= []
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
 def buy_cat
   
end