class Cat
attr_accessor :owner, :mood
attr_reader :name

def initialize(name, owner)
  @name, @owner = name, owner
  @mood = "nervous"
 end
end