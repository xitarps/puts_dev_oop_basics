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
end

batata = User.new(age: 22, height: 175, name: 'Batata')
angela = User.new(age: 22, height: 170, name: 'Angela')
binding.irb


# nome = 'Batata'
# nome_2 = 'Angela'
# nome_3 = 'Roberto'
# idade = 22
# altura = 175

# puts say_hi(nome)
# puts say_hi(nome_2)
# puts say_hi(nome_3)