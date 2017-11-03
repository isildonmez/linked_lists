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
    
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def pop
  end

  def contains?
  end

  def find(data)
  end

  def to_s
  end
end