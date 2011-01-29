# treesortspec.rb
require_relative 'treesort'

describe Node do

  def check_newly_created_node(node, val)
    node.class.should equal(Node)
    node.instance_variable_get(:@left).should == nil
    node.instance_variable_get(:@value).should == val
    node.instance_variable_get(:@right).should == nil
  end

  def create_and_check_node(val)
    node = Node.new(val)
    check_newly_created_node(node, val)
    node
  end

  def check_smaller_addition(node, val)
    sub_node = node.instance_variable_get(:@left)
    check_newly_created_node(sub_node, val)
  end

  def check_equal_or_larger_addition(node, val)
    sub_node = node.instance_variable_get(:@right)
    check_newly_created_node(sub_node, val)
  end


  it "create with one integer" do
    create_and_check_node (2)
    create_and_check_node (-2)
    create_and_check_node (66)
  end


  it "add a smaller number" do
    node = create_and_check_node (2)
    node.add(-6)
    check_smaller_addition(node, -6)
  end

  it "add an equal number" do
    node = create_and_check_node (2)
    node.add(2)
    check_equal_or_larger_addition(node,2)
  end

  it "add a greater number" do
    node = create_and_check_node (2)
    node.add(100)
    check_equal_or_larger_addition(node,100)
  end
end

describe Node do
  it "one int sort" do
    node=Node.new (2)
    node.sort.should ==[2]
  end

  it "two int sort" do
    node=Node.new (2)
    node.add(-200)
    node.sort.should == [-200, 2]

    node=Node.new (2)
    node.add(2)
    node.sort.should == [2, 2]

    node=Node.new (2)
    node.add(200)
    node.sort.should == [2, 200]
  end

  it "three-plus int sort" do
    node=Node.new (2)
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
