# treesort.rb

class Node

  def initialize(i)
    @value = i
    @left, @right = nil, nil
  end

  def add(i)
    if i < @value
      @left.is_a?(Node) ? @left.add(i) : @left = Node.new(i)
    elsif
      @right.is_a?(Node) ? @right.add(i) : @right = Node.new(i)
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

class Sorter

  def initialize
    @tree = nil
  end

  def add(i)
    if @tree == nil
      @tree = Node.new(i)
    else
      @tree.add(i)
    end
  end

  def sort
    if @tree == nil
      []
    else
      @tree.sort
    end
  end
end