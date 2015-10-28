class Fraccionario

  attr_reader :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def to_s
    "(#{@x}/#{@y})"
  end

  def *(value)	#Multiplica la fracción por un valor
    Fraccionario.new(@x * value, @y)
  end

  def -@	#Invierte el signo de la fracción
    Fraccionario.new(@x * -1, @y)
  end

  def + (value)	#Suma con otra fracción	//Da el resultado sin simplificar
    Fraccionario.new(@x * @y + value.x * value.y , @y * value.y)
  end

  def - (value)	#Resta con otra fracción //Sólo si es del mismo denominador
  	Fraccionario.new(@x - value.x , @y)
  end

end