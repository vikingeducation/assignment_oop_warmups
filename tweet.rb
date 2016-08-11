class Tweeter

  def initialize
    @tweet = []
  end

  def tweet(message)
    @tweet << message
    return @tweet
  end

  def each
    length = @tweet.length
    i = 0
    while i < length
      yield  @tweet[i]
      i += 1
    end
  end

  def map
    @tweet.length.times do |i|
      @tweet[i] = yield @tweet[i]
    end
    return @tweet
  end

end
