require 'lib/fraccionario'
require 'test/unit'

class TestFraccionario < Test::Unit::TestCase
  def setup
    @dostercios = Fraccionario.new(2,3)
    @untercio = Fraccionario.new(1,3)
    @unidad = Fraccionario.new(1,1)
  end

  def testMultiplicar
    assert_equal("(5/1)", (@unidad*5).to_s)
  end

  def testNegar
    assert_equal("(-1/1)", (-@unidad).to_s)
  end

  def testSuma
    assert_equal("(4/3)", (@untercio + @unidad).to_s)
  end

  def testSuma2
    assert_equal("(9/9)", (@untercio + @dostercios).to_s)
  end

  def testResta
    assert_equal("(1/3)", (@dostercios - @untercio).to_s)
  end

#  def testFallo
#    assert_equal("(2/3)", (@dostercios - @untercio).to_s)
#  end
end