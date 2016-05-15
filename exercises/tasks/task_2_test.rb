require 'minitest/autorun'
require 'minitest/pride'
require './task_2'
require 'pry'

class Task2Test < Minitest::Test
  def test_nine
    a = [1,0,0,1,1]

    assert_equal [1,1,0,1], Task2.new.solution(a)
  end
end
