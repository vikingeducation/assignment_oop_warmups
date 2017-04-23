class Tweeter
  include Enumerable

  def each(&block)
    i = 0
    while i < @tweets.length
      yield @tweets[i]
      i += 1
    end

  end
  def initialize
      @tweets = []
  end

  def tweet(message)
      @tweets.push(message[0..143])
  end
end

t = Tweeter.new

# Add some tweets to our @tweets array
t.tweet("first message")
t.tweet("second message")

# Use Enumerable methods on the Tweeter instance
t.each{|msg| puts msg}
#=> first message
#=> second message

# Note: You should NOT have defined this method explicitly!
#   ...it should come from Enumerable by default.
t.map{|msg| puts(msg.upcase)}
#=> ["FIRST MESSAGE", "SECOND MESSAGE"]
