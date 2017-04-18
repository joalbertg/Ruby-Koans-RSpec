require 'minitest/autorun'

class CalculateTest < Minitest::Test
  def add(*num)
    # num.inject(0) { |n, i| n + i }
    num.reduce(:+)
  end

  def subtract(*num)
    # (num.drop 1).inject(num[0]) { |n, i| n - i }
    num.reduce(:-)
  end

  def calculate(n1, n2, options = {})
    if options[:subtract]
      subtract(n1 - n2)
    else
      add(n1 + n2)
    end
  end

  def test_add
    assert_equal 9, add(4, 5)
    assert_equal -5, add(-10, 2, 3)
    assert_equal 0, add(0, 0, 0, 0)
  end

  def test_subtract
    assert_equal -1, subtract(4, 5)
    assert_equal -15, subtract(-10, 2, 3)
  end

  def test_calculate
    assert_equal 9, calculate(4, 5, add: true)
    assert_equal -1, calculate(4, 5, subtract: true)
    assert_equal 8, calculate(5, 3)
  end
end
