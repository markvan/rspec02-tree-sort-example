# treesortspec.rb
require 'treesort'
require 'leaf_node_matcher'
require 'smaller_addition_matcher'

describe Node do

  def create_and_check_node(val)
    node = Node.new(val)
    node.should be_leaf_node_with_value val
    node
  end

  def check_equal_or_larger_addition(node, sub_node_val)
    node.instance_variable_get(:@left).sort.should == []
    sub_node = node.instance_variable_get(:@right)
    sub_node.should be_leaf_node_with_value sub_node_val
  end


  it "create with one integer" do
    create_and_check_node (2)
    create_and_check_node (-2)
    create_and_check_node (66)
  end


  it "add a smaller number" do
    node = Node.new(2)
    node.add(-6)
    node.should handle_smaller_addition_of -6
  end

  it "add an equal number" do
    node = Node.new(2)
    node.add(2)
    check_equal_or_larger_addition(node,2)
  end

  it "add a greater number" do
    node = Node.new(2)
    node.add(100)
    check_equal_or_larger_addition(node,100)
  end
end

describe Node do
  it "one int sort" do
    node=Node.new(2)
    node.sort.should ==[2]
  end

  it "two int sort" do
    node=Node.new(2)
    node.add(-200)
    node.sort.should == [-200, 2]

    node=Node.new(2)
    node.add(2)
    node.sort.should == [2, 2]

    node=Node.new(2)
    node.add(200)
    node.sort.should == [2, 200]
  end

  it "three-plus int sort" do
    node=Node.new(2)
    node.add(-200)
    node.add(-300)
    node.sort.should == [-300, -200, 2]


    node.add(400)
    node.sort.should == [-300, -200, 2, 400]

    node.add(-16)
    node.sort.should == [-300, -200, -16, 2, 400]
  end
end


describe Sorter do
  it "sort returns [] when first created and no integers to sort" do
    s = Sorter.new
    s.sort.should == []
  end
end

describe Sorter do
  it "sorts just one integer" do
    s = Sorter.new
    s.add(2);
    s.sort.should == [2]
  end
end

describe Sorter do
  it "sorts many integers" do
    s = Sorter.new
    s.add(3);
    s.add(-2)
    s.sort.should == [-2, 3]
    s.add(-2)
    s.add(0)
    s.add(-1)
    s.add(0)
    s.sort.should == [-2,-2,-1,0,0,3]
  end
end
