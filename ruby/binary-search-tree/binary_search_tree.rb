class Bst
  def initialize(value)
    @data = value
    @left = nil
    @right = nil
  end

  attr_reader :data
  attr_accessor :left, :right

  def insert(value)
    if value > data
      if right.nil?
        self.right = Bst.new(value)
      else
        right.insert(value)
      end
    else
      if left.nil?
        self.left = Bst.new(value)
      else
        left.insert(value)
      end
    end
  end

  def each(&block)
    return to_enum(:each) unless block_given?

    left.each(&block) if left
    yield(data)
    right.each(&block) if right
  end
end
