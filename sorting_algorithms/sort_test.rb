require 'minitest/autorun'
require 'minitest/pride'
require './sort'

class SortTest < Minitest::Test
  def test_it_can_bubble_sort_two_numbers
    sorter  = Sort.new
    numbers = [2, 0]

    assert_equal numbers.sort, sorter.bubble_sort(numbers)
  end

  def test_it_can_bubble_sort_three_numbers
    sorter  = Sort.new
    numbers = [2, 0, 5]

    assert_equal numbers.sort, sorter.bubble_sort(numbers)
  end

  def test_it_can_bubble_sort_10_numbers
    sorter  = Sort.new
    numbers = [10, 412, 12, 123, 2, 123, 1, 321, 111, 908]

    assert_equal numbers.sort, sorter.bubble_sort(numbers)
  end

  def test_it_can_insert_sort_two_numbers
    sorter  = Sort.new
    numbers = [2, 0]

    assert_equal numbers.sort, sorter.insert_sort(numbers)
  end

  def test_it_can_insert_sort_three_numbers
    sorter  = Sort.new
    numbers = [2, 0, 5]

    assert_equal numbers.sort, sorter.insert_sort(numbers)
  end

  def test_it_can_insert_sort_10_numbers
    sorter  = Sort.new
    numbers = [10, 412, 12, 123, 2, 123, 1, 321, 111, 908]

    assert_equal numbers.sort, sorter.insert_sort(numbers)
  end

  def test_it_can_merge_sort_2_numbers
    sorter  = Sort.new
    numbers = [10, 5]

    assert_equal numbers.sort, sorter.merge_sort(numbers)
  end

  def test_it_can_merge_sort_3_numbers
    sorter  = Sort.new
    numbers = [10, 1, 4]

    assert_equal numbers.sort, sorter.merge_sort(numbers)
  end

  def test_it_can_merge_sort_4_numbers
    sorter  = Sort.new
    numbers = [10, 1, 2, 4]

    assert_equal numbers.sort, sorter.merge_sort(numbers)
  end
end
