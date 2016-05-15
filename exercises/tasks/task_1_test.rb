require 'minitest/autorun'
require 'minitest/pride'
require './task_1'
require 'pry'

class Task1TesT < Minitest::Test
  def test_1
    a = [5, 5, 1, 7, 2, 3, 5]
    x = 5

    assert_equal 4, Task1.new.solution(x, a)
  end

  def test_2
    a = [1, 2, 3, 1]
    x = 1

    assert_equal 2, Task1.new.solution(x, a)
  end

  def test_3
    a = [2, 1, 2, 0, 0]
    x = 2

    assert_equal 4, Task1.new.solution(x, a)
  end
end
