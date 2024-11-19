class User
  @@users = []
  attr_reader :name

  def initialize(name:, age:, height:)
    @name = name
    @age = age
    @height = height
    @@users << self
  end

  def say_hi
    "Olá, sou #{@name}"
  end

  def self.type
    'Sou um humano'
  end

  def self.users
    @@users
  end

  def very_heavy_calc
    100_000_000_000
  end
end
