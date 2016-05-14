require 'minitest/autorun'
require 'minitest/pride'
require './triangle'
require 'pry'

class TriagleTest < Minitest::Test
  def test_it_detect_a_triplet
    a = [10, 2, 5, 1, 8, 20]

    assert_equal 1, Triangle.new.solution(a)
  end

  def test_it_cannot_detect_a_triplet
    a = [10, 50, 5, 1]

    assert_equal 0, Triangle.new.solution(a)
  end

  def test_it_cannot_detect_a_triplet_when_there_are_no_inputs
    a = []

    assert_equal 0, Triangle.new.solution(a)
  end

  def test_it_cannot_detect_a_triplet_when_a_value_is_nil
    a = [nil, 1, 1]

    assert_equal 0, Triangle.new.solution(a)
  end

  def test_it_can_detect_a_triplet_when_a_value_is_nil
    a = [nil, 1, 1, 1]

    assert_equal 1, Triangle.new.solution(a)
  end

  def test_it_cannot_detect_a_triplet_when_negative_numbers
    a = [-1, -1, -1]

    assert_equal 0, Triangle.new.solution(a)
  end

  def test_it_cannot_detect_a_triplet_when_only_one_number
    a = [1]

    assert_equal 0, Triangle.new.solution(a)
  end
end
