class SimpleLinkedList
  def initialize(array = nil)
    @head = nil
    @tail = nil

    array.each { |datum| push(Element.new(datum)) } unless array.nil?
  end

  private

  attr_accessor :head, :tail

  def tail
    unless head.nil?
      current_node = head

      until (current_node.next).nil?
        current_node = current_node.next
      end

      self.tail = current_node
    end
  end

  public

  def push(element)
    if head.nil?
      self.head = element
    else
      tail.next = element
    end
    self
  end

  def pop
    unless head.nil?
      previous_node = nil
      current_node = head

      until (current_node.next).nil?
        previous_node = current_node
        current_node = current_node.next
      end

      unless previous_node.nil?
        previous_node.next = nil
        tail
      else
        self.head = nil
        self.tail = nil
      end
      current_node
    end
  end

  def to_a
    output = []
    unless head.nil?
      current_node = head

      until (current_node).nil?
        output << current_node.datum
        current_node = current_node.next
      end
    end
    output.reverse
  end

  def reverse!
    unless head.nil?
      previous_node = nil
      current_node = head
      next_node = nil

      until (current_node).nil?
        next_node = current_node.next
        current_node.next = previous_node

        previous_node = current_node
        current_node = next_node
      end
      self.head = previous_node
    end
    self
  end
end

class Element
  def initialize(datum)
    @datum = datum
    @next = nil
  end

  public

  attr_reader :datum
  attr_accessor :next
end

list = SimpleLinkedList.new
first = Element.new(1)
second = Element.new(2)
third = Element.new(3)
list.push(first).push(second).push(third)
puts list
