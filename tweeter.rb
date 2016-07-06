class Tweeter

  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets.push message
  end

  def each(&block)
    @tweets.to_enum
    loop do
      &block.call(@tweets)
      @tweets.next
    end 
  end

end

def test
  tweeter = Tweeter.new
  tweeter.tweet "hi"
  tweeter.tweet "hello"
  tweeter.tweet "bye"
  tweeter.each { |t| puts t }
end

test