require 'minitest/autorun'
require 'minitest/pride'
require './count_div'
require 'pry'

class CountDivTest < Minitest::Test
  def test_it_returns_the_number_of_integers_divisible_by_two_a
    assert_equal 3, CountDiv.new.solution(6, 11, 2)
  end

  def test_it_returns_the_number_of_integers_divisible_by_two_b
    assert_equal 4, CountDiv.new.solution(6, 12, 2)
  end

  def test_it_returns_the_number_of_integers_divisible_by_two_c
    assert_equal 4, CountDiv.new.solution(5, 12, 2)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_a
    assert_equal 2, CountDiv.new.solution(0, 3, 3)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_b
    assert_equal 1, CountDiv.new.solution(2, 3, 3)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_c
    assert_equal 2, CountDiv.new.solution(2, 6, 3)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_c
    assert_equal 20, CountDiv.new.solution(11, 345, 17)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_c
    assert_equal 0, CountDiv.new.solution(1, 1, 11)
  end

  def test_it_returns_the_number_of_integers_divisible_by_three_c
    assert_equal 1, CountDiv.new.solution(0, 0, 11)
  end
end
