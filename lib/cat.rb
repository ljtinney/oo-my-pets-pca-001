class Cat

  @@CATS = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@CATS << self
    @owner.cats << self
  end

  def self.all
    @@CATS
  end
end


