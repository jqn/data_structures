require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './equilibrium_index'

class EquilibriumIndexText < Minitest::Test
  def test_it_exist
    assert EquilibriumIndex
  end

  def test_it_finds_an_index
    a = [-1, 3, -4, 5, 1, -6, 2, 1]

    assert_includes [1,3,7], EquilibriumIndex.new.solution(a)
  end

  def test_it_finds_an_index_with_negative_numbers
    a = [1, 2, -3, 0]

    assert_includes [3], EquilibriumIndex.new.solution(a)
  end

  def test_it_finds_an_index_with_three_numbers
    a = [-1, -1, 1]

    assert_includes [0], EquilibriumIndex.new.solution(a)
  end
end
