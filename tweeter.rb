class Tweeter
  include Enumerable

  def initialize
  	@tweets = []
  end

  def tweet(message)
  	@tweets << message[0..143]
  end

  def each
  	@tweets.length.times do |x|
  	  yield @tweets[x]
  	end
  end
end

t = Tweeter.new

t.tweet("first message")
t.tweet("second message")

t.each{|msg| puts msg}

p t.map{|msg| msg.upcase}