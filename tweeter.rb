class Tweeter

  include Enumerable

  def initalize
    @tweets = ["hey", "hi", "wbatsup"]
  end

  def each
    puts @tweets
    @tweets.each { |tweet| yield(tweet) }
  end
end

t = Tweeter.new

puts t.nil?

t.each do |tweet| 
  puts tweet
end