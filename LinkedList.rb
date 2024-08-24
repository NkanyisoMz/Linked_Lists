require_relative 'Node.rb'
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end


  def append(value)
    node = Node.new
    node.value = value
    node.next_node = nil
    if @head.nil?
      @head = node
      @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
    @size += 1

  end

  def prepend(value)
    node = Node.new
    node.value = value
    node.next_node = @head
    @head = node
    @size += 1
    
  end

  def size
    @size
    
  end

  def head
    @head.value unless @head.nil?
    
  end

  def tail
    @tail.value unless @tail.nil?
    
  end

  def at(index)
    current = @head
    index.times do
      current = current.next_node
    end
    current.value  
  end

  def pop
    if @head.nil?
      nil
    elsif @head == @tail
      value = @head.value
      @head = nil
      @tail = nil
      @size -= 1
      value
    else
      current @head
      until current.next_node == @tail
        current = current.next_node
      end
      value = @tail.value
      current.next_node = nil
      @tail = current
      @size -= 1
      value
    end
    
  end

  def contains?(value)
    current = @head
    until current.nil?
      return true if current.value == value
      current = current.next_node
    end
    false
    
  end

  def find(value)
    current = @head
    index = 0
    until current.nil?
      return index if current.value == value
      current = current.next_node
      index += 1
    end
    nil
    
  end

  def to_s
    current = @head
    str = ""
    until current.nil?
      str += "(#{current.value}) ->"
      current = current.next_node
    end
    str + "nil"
  end

  # def insert_at(value, index)
    
  # end

  # def remove_at(index)
    
  # end
end