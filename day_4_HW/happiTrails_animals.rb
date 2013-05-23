class Animal
  attr_accessor :name, :breed, :age, :gender, :favorite_toy, :owner

  def initialize(name, breed, age, gender, favorite_toy, owner = nil)
    @name = name
    @breed = breed
    @age = age
    @gender = gender
    @favorite_toy = favorite_toy
    @owner = owner
  end
  def to_s
    "#{@name}, the #{breed}, #{gender} is #{age} year's old and loves to play with #{favorite_toy}'s."
  end
end
