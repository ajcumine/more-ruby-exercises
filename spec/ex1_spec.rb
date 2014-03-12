require "ex1"

describe Array do

  context "map" do
    it "should create new array of double array" do
      array = [1,2,3]
      expect(array.map{|x| x*2}).to eq([2,4,6])
    end
  end

  context "my_map" do
    it "should create new array of double array" do
      array = [1,2,3]
      expect(array.my_map{|x| x*2}).to eq([2,4,6])
    end
  end 

  context "select" do
    it "should create a new array of odd numbers" do
      array = [1,2,3]
      expect(array.select{|x| x.odd?}).to eq([1,3])
    end
  end

  context "my_select" do
    it "should create a new array of odd numbers" do
      array = [1,2,3]
      expect(array.my_select{|x| x.odd?}).to eq([1,3])
    end
  end

  context "each" do
    it "should sum the array values" do
      array = [1,2,3]
      result = 0
      array.each{|x| result += x}
      expect(result).to eq(6)
    end
  end

  context "my_each" do
    it "should sum the array values" do
      array = [1,2,3]
      result = 0
      array.my_each{|x| result += x}
      expect(result).to eq(6)
    end
  end

  context "proc test" do
    it "should double the array values" do
      my_proc = Proc.new{|x| x*2}
      result = [1,2,3].my_map(&my_proc) # for you to complete, pass the proc here
      expect(result).to eq([2,4,6]) # make it pass
    end
  end
end