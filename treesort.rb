# treesort.rb

class Node

  attr_accessor :left, :value, :right
  @left, @right = nil, nil


  def initialize(i)
    @value = i
  end

  def add(i)
    if i < @value
      if @left.is_a? Node
        @left.add(i)
      else
        @left = Node.new(i)
      end
    end
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