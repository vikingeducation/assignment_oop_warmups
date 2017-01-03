class Tweeter
  include Enumerable
  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..144]
  end

  def each(prock=nil)
    @tweets.each do  |n|
      block_given? ? yield(n) : prock.call(n)
    end
  end

end
