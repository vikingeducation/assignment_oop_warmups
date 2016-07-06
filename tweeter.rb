class Tweeter

  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets.push message[0, 144]
  end

  def each(&block)
    enum = @tweets.to_enum
    enum.each do |y|
      block.call(y)
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