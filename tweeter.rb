class Tweeter
  
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..143]
  end

  def each
    @tweets.size.times do |tweet|
      yield(@tweets[tweet])
    end
    self
  end

end