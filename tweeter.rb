#tweeter.rb

#Tweeter is a wrapper around array of tweets
class Tweeter
  def initialize
    @tweets = []
  end

  #pushes message into tweets array
  def tweet(message)
    @tweets.push(message[0..144])
  end

  #each method iterates through all Tweets inside its @tweets
  def each
    @tweets.each {|item| yield item}
  end

  



end

t = Tweeter.new()
t.tweet("first message")
t.tweet("second message")

t.each{|msg| puts msg}