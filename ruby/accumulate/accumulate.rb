module Enumerable
  def accumulate
    new_array = []

    for item in self
      new_array << yield(item)
    end
    
    new_array
  end
end
