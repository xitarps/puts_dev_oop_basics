
class Animal
  def emitir_som
    puts 'emitindo som... aguarde...'
  end
end

class Mamifero < Animal
end

class Gato < Mamifero
  def emitir_som
    super
    puts 'miau'
  end
end

class Cachorro < Mamifero
  def emitir_som
    super
    puts 'auau'
  end
end

class Base
  def publico = puts 'publico ok'

  protected
  def protegido = puts 'protegido ok'

  private
  def privado = puts 'privado ok'
end

class A < Base
  def pub = ::Base.new.publico
  def prt = ::Base.new.protegido
  def prv = ::Base.new.privado
end

class B < A
  def pub = ::Base.new.publico
  def prt = ::Base.new.protegido
  def prv = ::Base.new.privado
end

binding.irb