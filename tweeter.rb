class Tweeter
  include Enumerable

  def initialize
      @tweets = []
  end

  def tweet(message)
      # Your TODO: fill this in.
      # This should add the first 144 characters
      # of any message to the @tweets array
      @tweets << message[0..144]
  end

  def each
    n = 0
    while n < @tweets.size
      yield @tweets[n]
      n += 1
    end
  end

end