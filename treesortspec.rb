# treesortspec.rb
require_relative 'treesort'

describe Node do
  it "deals with one integer" do
    node=Node.new (2)    # want to disallow this later
    node.sorted.should == [2]
    node=Node.new (-2)    # want to disallow this later
    node.sorted.should == [-2]
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
