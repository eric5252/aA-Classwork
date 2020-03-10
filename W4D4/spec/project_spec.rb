require "rspec"
require "project"

describe "my_uniq" do
  context "should take in an Array that remove duplicate" do
    it "remove duplicate" do
      expect([1,2,1,3,3].uniq).to eq([1,2,3])
    end
    it "return the new Array" do
      allow([1,2,1,3,3]).to receive(:my_uniq).and_return([1,2,3])
    end
  end
end


describe "Array#two_sum" do
  let(:arr) { Array.new([-1, 0, 2, -2, 1]) }
  context "find all pairs of positins where the elements at those positions sum to zero" do
    it "returns all positions that sum up to zero" do
      allow(arr).to receive(:two_sum).and_return([[0, 4], [2, 3]])
    end
  end
end


describe "my_transpose" do
  context "should take a 2D-array and return transposed array" do 
      it "switch colunm and rows" do
        expect([[0, 1, 2],[3, 4, 5],[6, 7, 8]].transpose).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
        allow([[0, 1, 2],[3, 4, 5],[6, 7, 8]]).to receive(:my_transpose).and_return([[0, 3, 6],[1, 4, 7],[2, 5, 8]]) 
      end
  end
end

describe "stock_picker" do
  let(:arr) do
    [1000,500,4000,2000]
  end
  context "should find the most profitable pair of days" do
    it "should first buy the stock and then sell the stock" do
  
      # allow([1000,500,4000,2000]).to receive(:stock_picker).and_return([1,2])
      # allow([500, 400, 200, 2000]).to receive(:stock_picker).and_return([2,3])
        expect(stock_picker(arr)).to eq([1,2])
    end
    it "should not sell the stock before you buy it" do
      expect([1000,5000,4,2000]).to_not eq([1,2])
    end
  end
end

describe "TowerOfHanoi" do
  let(:arr) { TowerOfHanoi.new([[3,2,1],[],[]]) }

  # describe "#move" do
  #   it "promt the user and ask what pile to select a disc from" do
  #     expect(arr.move).to eq([3,2],[1],[])
  #   end
  #   # it "the input should not be less than zero and more than two" do
  #   #   expect(arr.move)
  #   # end
  # end

  describe "#won?" do
    it "all disks from the start array are now stacked in the last array" do
      expect(arr.won?).to eq([[],[],[3,2,1]])
      arr.won?
      expect(arr.won?).to be(true)
    end
    it "if there are still discs left in the first or second array" do
      expect(arr.won?).to eq([[1],[2],[3]]).and_return(false)
    end
  end


end