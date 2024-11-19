require_relative 'user'

class App
  def self.call
    batata = User.new(age: 22, height: 175, name: 'Batata')
    angela = User.new(age: 22, height: 170, name: 'Angela')

    puts batata.say_hi
    puts angela.say_hi

    puts batata
  end
end

App.call
