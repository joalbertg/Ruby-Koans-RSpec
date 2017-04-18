require 'minitest/autorun'

#            1
#          3    5
#       7    9     11
#   13    15    17    19
#21    23    25    27    29
#
#row_sum_odd_numbers(1): # 1
#row_sum_odd_numbers(2): # 3 + 5 = 8

class RowSumOddNumbersTest < Minitest::Test
  def row_sum_odd_numbers(n)
    initial = n * (n - 1) + 1
    (0..(n - 1)).map { |i| initial + 2 * i }.reduce(:+)
  end

  def test_row_sum_odd_numbers
    assert_equal 1, row_sum_odd_numbers(1)
    assert_equal 8, row_sum_odd_numbers(2)
    assert_equal 2197, row_sum_odd_numbers(13)
    assert_equal 6859, row_sum_odd_numbers(19)
    assert_equal 68921, row_sum_odd_numbers(41)
  end
end
