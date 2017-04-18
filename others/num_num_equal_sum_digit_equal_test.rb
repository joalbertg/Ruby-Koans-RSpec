require "minitest/autorun"

class NunNunEqualSumDigitEqualTest < Minitest::Test
  def digito(num)
    numero = num ** 2
    numero.to_s.split(//).map(&:to_i).reduce(:+) == num
  end

  def test_suma_digito_correcto
    assert digito(9)
    assert !digito(7)
  end
end
