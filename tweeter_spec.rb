require './tweeter.rb'

describe Tweeter do
  before do
    @t = Tweeter.new
    @t.tweet("first message")
    @t.tweet("second message")
  end

  describe "tweet method" do
    it "should add a message to tweets" do
      expect { @t.each {|msg| puts msg} }.to output("first message\nsecond message\n").to_stdout
    end
  end

  describe "Enumerable implimentation" do
    it "map should work" do
      expect(@t.map{|msg| msg.upcase}).to eq(["FIRST MESSAGE", "SECOND MESSAGE"])
    end

    it "each_with_index should work" do
      expect{ @t.each_with_index{|msg,i| puts "#{i}: #{msg}"} }.to output("0: first message\n1: second message\n").to_stdout
    end
  end
end
