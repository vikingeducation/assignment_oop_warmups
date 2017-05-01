class Tweeter
  include Enumerable
  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..142]
  end

  def each
    @tweets.each do |msg|
      yield msg
    end
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
puts t.map{|msg| msg.upcase}
#=> ["FIRST MESSAGE", "SECOND MESSAGE"]
