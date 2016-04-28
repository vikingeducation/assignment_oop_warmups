class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message
  end

  def each(&block)
    @tweets.each do |tweet|
      block.call(tweet)
    end
  end
  
end
