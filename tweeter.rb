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



end

