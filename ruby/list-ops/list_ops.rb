module Enumerable
  def my_each
    for item in self
      yield(item)
    end
    self
  end
end

class ListOps
  def self.arrays(array)
    count = 0
    array.my_each { count += 1 }
    count
  end

  def self.reverser(array)
    reversed = []
    array.my_each { |i| reversed.unshift(i) }
    reversed
  end

  def self.concatter(array1, array2)
    array2.my_each { |i| array1 << i }
    array1
  end

  def self.mapper(array)
    new_array = []
    array.my_each { |i| new_array << yield(i) }
    new_array
  end

  def self.filterer(array)
    new_array = []
    array.my_each { |i| new_array << i if yield(i) }
    new_array
  end

  def self.sum_reducer(array)
    sum = 0
    array.my_each { |i| sum += i }
    sum
  end

  def self.factorial_reducer(array)
    product = 1
    array.my_each { |i| product *= i }
    product
  end
end
