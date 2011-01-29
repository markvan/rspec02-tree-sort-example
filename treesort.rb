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
    elsif if @right.is_a? Node
            @right.add(i)
          else
            @right = Node.new(i)
          end
    end
  end

  def sort
    if @left.is_a? Node
      result = @left.sort
    else
      result = []
    end
    result.concat([@value])
    if @right.is_a? Node
      result.concat(@right.sort)
    end
    result
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