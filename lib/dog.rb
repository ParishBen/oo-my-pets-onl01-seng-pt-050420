class Dog
  attr_accessor :owner, :mood
  attr_reader :name
  def initialize(name, owner)
    @name, @owner = name, owner
  end
end