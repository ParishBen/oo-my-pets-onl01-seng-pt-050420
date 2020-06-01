class Cat
attr_accessor :owner
attr_reader :name

def initialize(name, owner)
  @name, @owner = name, owner
end
end