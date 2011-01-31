class SmallerAdditionMatcher
  def initialize(sub_node_val)
      @sub_node_val = sub_node_val
    end

    def matches?(node)
      sub_node = node.instance_variable_get(:@left)
      return false unless node.instance_variable_get(:@right) == nil
      LeafNodeMatcher.new(@sub_node_val).matches?(sub_node)
    end

    def failure_message_for_should
      "really need better failure messages for distinct cases"
    end

  end

  def handle_smaller_addition_of(sub_node_val)
    SmallerAdditionMatcher.new(sub_node_val)
  end

def check_smaller_addition(node, sub_node_val)

  end