# treesortspec.rb
require_relative 'treesort'

describe Node do
  it "create with one integer" do
    node=Node.new (2)

    node.left.should == nil
    node.value.should == 2
    node.right.should == nil

    node=Node.new (-2)
    node.value.should == -2
  end
end


describe Node do
  it "add a smaller number" do
    node=Node.new (2)
    node.add(-6)

    node.left.left.should == nil
    node.left.value.should == -6
    node.left.right.should == nil
  end
end

describe Node do
  it "add a greater number" do
    node=Node.new (2)
    node.add(100)

    node.right.left.should == nil
    node.right.value.should == 100
    node.right.right.should == nil
  end
end

describe Node do
  it "one int sort" do
  node=Node.new (2)
    node.sort.should ==[2]
  end
end




describe Tree do
  it "sort returns nil when first created and no integers to sort" do
    tree = Tree.new
    tree.sorted.should == nil
  end
end

describe Tree do
  it "sorts just one integer" do
    tree = Tree.new
    tree.add(3);
    tree.sorted.should == 3
    tree = Tree.new
    tree.add(-2)
    tree.sorted.should == -2
  end
end

describe Tree do
  it "sorts two integers" do
    tree = Tree.new
    tree.add(3);
    tree.add(-2)
    tree.sorted.should == [3, -2]
  end
end
