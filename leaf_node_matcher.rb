#module LeafNodeMatcher

  class NewNodeMatcher
    def initialize(val)
      @val = val
    end

    def matches?(node)
      #return false unless node.class == Node
      return false unless node.instance_variable_get(:@left) == nil
      return false unless node.instance_variable_get(:@value) == (@val)
      return false unless node.instance_variable_get(:@right) == nil
      return true
    end
    def failure_message_for_should
      "kabunga"
    end

  end

  def be_leaf_node_with_value(val)
    NewNodeMatcher.new(val)
  end
#end