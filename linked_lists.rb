class Node
  attr_accessor :value :next_node

  def initialize(value = nil, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  def initialize
    @head = Node.new(value, next_node)
  end

  def append
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.next_node = Node.new(value, next_node)
  end

  def prepend
    @head = Node.new(value, next_node)
  end

  def size
    size = 0
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
    current = @head
    index.times {current = current.next_node}
    current.value
  end

  def pop
    current = @head
    until current.next_node == nil
      current = current.next_node
    end
    current.value
  end

  def contains?
  end

  def find(data)
  end

  def to_s
  end
end