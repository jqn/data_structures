require 'minitest/autorun'
require 'minitest/pride'
require './iterator'

class IteratorTest < Minitest::Test
  def test_it_can_find_the_highest_binary_gap_in_101
    number = '101'
    result = Iterator.new.find_gap(number)

    assert_equal 1, result
  end

  def test_it_can_find_the_highest_binary_gap_in_1001
    number = '1001'
    result = Iterator.new.find_gap(number)

    assert_equal 2, result
  end

  def test_it_can_find_the_highest_binary_gap_in_10010001
    number = '10010001'
    result = Iterator.new.find_gap(number)

    assert_equal 3, result
  end

  def test_it_can_find_the_highest_binary_gap_in_10001001
    number = '10001001'
    result = Iterator.new.find_gap(number)

    assert_equal 3, result
  end

  def test_it_can_find_the_highest_binary_gap_in_10000100
    number = '10000100'
    result = Iterator.new.find_gap(number)

    assert_equal 4, result
  end

  def test_it_can_find_the_highest_binary_gap_in_1010000
    number = '1010000'
    result = Iterator.new.find_gap(number)

    assert_equal 1, result
  end
end
