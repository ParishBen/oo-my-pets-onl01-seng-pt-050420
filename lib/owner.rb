class Owner
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
  end 
  
  def self.say_species
    puts "I am a #{self.species}."
  end
end