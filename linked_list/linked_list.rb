class LinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  def push(insert_node)
    base_node = head

    until base_node.nil?
      if base_node.next_node.nil?
        base_node.next_node = insert_node
        break
      end

      base_node = base_node.next_node
    end
  end

  def pop
    base_node = head

    until base_node.nil?
      base_node.next_node = nil if base_node.next_node.next_node.nil?

      base_node = base_node.next_node
    end
  end

  def insert(index, insert_node)
    base_node = head
    counter   = 0

    until base_node.nil?
      counter += 1

      if counter == index
        base_node_original_next_node = base_node.next_node

        base_node.next_node   = insert_node
        insert_node.next_node = base_node_original_next_node
      end

      base_node = base_node.next_node
    end
  end

  def reverse
    base_node     = head
    previous_node = nil
    next_node     = nil

    until base_node.nil?
      next_node = base_node.next_node

      base_node.next_node = previous_node
      previous_node       = base_node

      base_node = next_node
    end

    self.head = previous_node
  end

  def display
    message   = ""
    base_node = head

    until base_node.nil?
      message += base_node.data.to_s
      message += ", "

      base_node = base_node.next_node
    end

    message[0..-3]
  end
end

class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node = nil)
    @data      = data
    @next_node = next_node
  end
end
