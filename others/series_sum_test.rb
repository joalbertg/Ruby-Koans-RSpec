require 'minitest/autorun'

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 + ...
#
# series_sum(1) => "1"
# series_sum(2) => 1 + 1/4 = "1.25"
# series_sum(5) => 1 + 1/14 + 1/7 + 1/10 + 1/13 = "1.57"

class SeriesSumTest < Minitest::Test
  def test_series_sum
    def series_sum(n)
      return '0.00' if n == 0
      # s = 0
      # n.times { |i| s += 1.0 / (3 * i + 1) }
      # '%.2f' % s
      '%.2f' % (0..(n - 1)).map { |i| 1.0 / (3 * i + 1) }.reduce(:+)
    end

    assert_equal '1.00', series_sum(1)
    assert_equal '1.25', series_sum(2)
    assert_equal '1.39', series_sum(3)
  end
end
