require 'minitest/autorun'
require 'minitest/pride'
require './linked_list'

class LinkedListTest < Minitest::Test
  def test_it_has_data
    node = Node.new(1)

    assert_equal 1, node.data
  end

  def test_it_knows_it_s_next_node
    first_node  = Node.new(1)
    second_node = Node.new(2, first_node)

    assert_equal first_node, second_node.next_node
  end

  def test_it_has_a_node
    node = Node.new(1)
    list = LinkedList.new(node)

    assert_equal "1", list.display
  end

  def test_it_pushes_a_node
    first_node  = Node.new(1)
    second_node = Node.new(2)

    list = LinkedList.new(first_node)
    list.push(second_node)

    assert_equal "1, 2", list.display
  end

  def test_it_pops_a_node
    first_node  = Node.new(1)
    second_node = Node.new(2)

    list = LinkedList.new(first_node)
    list.push(second_node)

    assert_equal "1, 2", list.display

    list.pop

    assert_equal "1", list.display
  end

  def test_it_inserts_a_node
    first_node = Node.new(1)
    third_node = Node.new(3)

    list = LinkedList.new(first_node)
    list.push(third_node)

    assert_equal "1, 3", list.display

    second_node = Node.new(2)
    list.insert(1, second_node)

    assert_equal "1, 2, 3", list.display
  end

  def test_it_reverses_a_list
    first_node  = Node.new(1)
    second_node = Node.new(2)
    third_node  = Node.new(3)

    list = LinkedList.new(first_node)
    list.push(second_node)
    list.push(third_node)

    assert_equal "1, 2, 3", list.display

    list.reverse

    assert_equal "3, 2, 1", list.display
  end
end
