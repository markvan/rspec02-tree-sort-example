# treesort.rb

  class Node

  def initialize(i)
    @value = [i]
  end

  def add(i)
    @value=i
  end

  def sorted
    @value
  end
end

class Tree

  def initialize
    @value = nil
  end

  def add(i)
    @value=i
  end

  def sorted
    @value
  end
end