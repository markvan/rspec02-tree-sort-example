# treesortspec.rb
require_relative 'treesort'

describe Node do
  it "sort returns nil when first created and no numbers added" do
    tree = Tree.new
    tree.sorted.should == nil
  end
end
