class Node
  attr_accessor :value, :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize(value, next_node = nil)
    @head = Node.new(value)
  end

  def append(value)
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = Node.new(value)
  end

  def prepend(value)
    current = @head
    @head = Node.new(value, current)
  end

  def size
    size = 1
    current = @head
    until current.next_node == nil
      current = current.next_node
      size += 1
    end
    size
  end

  def head
    @head.value
  end

  def tail
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.value
  end

  def at(index)
  	return nil if (index >= size) || (index < 0)
    current = @head
    index.times {current = current.next_node}
    current.value
  end

  def pop
    current = @head
    until current.next_node.next_node == nil
      current = current.next_node
    end
    current.next_node = nil
  end

  def contains?(value)
    current = @head
    until (current.next_node == nil) ||
          (current.value == value)
      current = current.next_node
    end
    return true if current.value == value
    return false
  end

  def find(data)
    current = @head
    index = 0
    until (current.next_node == nil) ||
          (current.value == data)
      current = current.next_node
      index += 1
    end
    return index if current.value == data
    return nil
  end

  def to_s
    current = @head
    data = [current.value]
    until (current.next_node == nil)
      current = current.next_node
      data << current.value
    end
    print "( #{data.join(' ) -> ( ')} ) -> nil"
  end
end