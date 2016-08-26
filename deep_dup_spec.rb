require './deep_dup.rb'

describe Array do
  context "the deep_dup method" do
    it "duplicates standard arrays" do
      arr = [1, 2, 3, 4]
      arr_dup = arr.deep_dup
      expect(arr.object_id).not_to eq(arr_dup.object_id)
      expect(arr).to eq(arr_dup)
    end

    it "duplicates two-dimentional arrays" do
      arr = [ [1, 2], [3, 4] ]
      arr_dup = arr.deep_dup
      expect(arr.object_id).not_to eq(arr_dup.object_id)
      expect(arr).to eq(arr_dup)
    end

    it "duplicates more-than-two-dimentional" do
      arr = [ [ 1, [ 2, 3 ] ],
              [ 4, 5, 6],
              [ [ 7, 8, [ 9, 10 ]], [11, 12] ] ]
      arr_dup = arr.deep_dup
      expect(arr.object_id).not_to eq(arr_dup.object_id)
      expect(arr).to eq(arr_dup)
    end
  end
end
