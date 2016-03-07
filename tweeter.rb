class Tweeter
  include Enumerable

  def each( &block )
    @tweets.each( &block )
  end

  def initialize
    @tweets = []
  end

  def tweet ( message )
    @tweets.push message[0..144]
  end

end