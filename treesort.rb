# treesort.rb

class Node
  def sorted
    []
  end
end
class Tree

  def new
    @value = nil
  end

  def add(i)
    @value=i
  end

  def sorted
    @value
  end
end