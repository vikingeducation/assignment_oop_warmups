class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def each
    return enum_for unless block_given?
    tweets.each {|tweet| yield(tweet)}
  end

  def tweet(message)
    tweets << message.to_s.slice(0,143)
  end

  protected
  attr_reader :tweets

end

t = Tweeter.new
t.tweet("test messsage")
t.tweet("Lorem ipsum dolor sit amet, consectetur adipisicing elit?")
p t.each{|msg| puts msg}
#=> first message
#=> second message

# Note: You should NOT have defined this method explicitly!
#   ...it should come from Enumerable by default.
p t.map{|msg| msg.upcase}