require_relative 'treesort'

class NewNodeMatcher
  def initialize(val)
    @val = val
  end

  def matches(node)
    return false if node.class != Node
    return false unless node.instance_variable_get(:@left) == nil
    return false unless node.instance_variable_get(:@value) == @val
    node.instance_variable_get(:@right) == nil
  end
end

def newly_created_node_with_value?(val)
  NewNodeMatcher.new(val)
end