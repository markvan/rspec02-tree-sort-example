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

describe Node do
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
end

describe Node do
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
