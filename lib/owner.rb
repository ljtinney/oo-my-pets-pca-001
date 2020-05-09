require 'pry'

class Owner
  @@OWNERS = []
  attr_accessor :cats, :dogs
  attr_reader :species, :name

  def self.all
    @@OWNERS
  end

  def self.count
   @@OWNERS.size
  end

  def self.reset_all
    @@OWNERS.clear
  end

  def initialize(name)
    @name = name
    @species = "human"
    @@OWNERS << self
    @cats = []
    @dogs = []
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.each {|dog| dog.mood = "happy"}
  end

  def feed_cats
    self.cats.each {|dog| dog.mood = "happy"}
  end

  def sell_pets
    self.cats.each do |cat|
      self.cats.delete(cat)
      cat.owner = nil
      cat.mood = "nervous"

    self.dogs.each do |dog|
      self.dogs.delete(dog)
      dog.owner = nil
      dog.mood = "nervous"
  end
end

  def list_pets
    number_of_cats = self.cats.count
    number_of_dogs = self.dogs.count
    "I have #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end

end
end