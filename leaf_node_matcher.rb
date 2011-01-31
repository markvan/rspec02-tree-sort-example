#module LeafNodeMatcher

  class LeafNodeMatcher
    def initialize(val)
      @val = val
    end

    def matches?(node)
      return false unless node.class == Node
      return false unless node.instance_variable_get(:@left) == nil
      return false unless node.instance_variable_get(:@value) == (@val)
      node.instance_variable_get(:@right) == nil
    end
    def failure_message_for_should
      "unexpected value mismatch or non-nil left or right"
    end

  end

  def be_leaf_node_with_value(val)
    LeafNodeMatcher.new(val)
  end
#end