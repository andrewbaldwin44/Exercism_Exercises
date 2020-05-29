class Deque
  def initialize
    @head = nil
    @tail = nil
  end

  def push(value)
    new_element = Element.new(value)

    if head.nil?
      self.head = new_element
    else
      current_tail = tail
      current_tail.next_node = new_element
      new_element.previous_node = current_tail
    end
  end

  def pop
    unless head.nil?
      current_node = tail

      if current_node.previous_node
        current_node.previous_node.next_node = nil
      else
        empty_list
      end

      current_node.value
    end
  end

  def shift
    unless head.nil?
      current_head = head

      if head.next_node
        self.head = head.next_node
        head.previous_node = nil
      else
        empty_list
      end

      current_head.value
    end
  end

  def unshift(value)
    new_element = Element.new(value)

    if head.nil?
      self.head = new_element
    else
      new_element.next_node = head
      head.previous_node = new_element
      self.head = new_element
    end
  end

  private

  attr_accessor :head, :tail

  def tail
    unless head.nil?
      current_node = head

      until (current_node.next_node).nil?
        current_node = current_node.next_node
      end

      self.tail = current_node
    end
  end

  def empty_list
    self.head = nil
    self.tail = nil
  end
end

class Element
  def initialize(value)
    @value = value
    @next_node = nil
    @previous_node = nil
  end

  public

  attr_reader :value
  attr_accessor :next_node, :previous_node
end
