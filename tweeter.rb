class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets.push(message[0..143])
    true
  end

  def each
    @tweets.each{ |tweet| yield(tweet) }
  end

end
