# treesortspec.rb
require_relative 'treesort'

describe Tree do
  it "sort returns nil when first created and no numbers added" do
    tree = Tree.new
    tree.sorted.should == nil
  end
end

describe Tree do
  it "creates a first node sucessfully" do
    tree = Tree.new
    tree.add(3);
    tree.sorted.should == [3]
  end
end
