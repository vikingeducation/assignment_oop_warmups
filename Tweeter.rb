class Tweeter
  include Enumerable
  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0...144]
  end

  def each
    @tweets.each { |n| yield(n) }
  end

end
