#tweeter.rb

class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets.push(message[0..144])
  end

  def each
    @tweets.each {|item| yield item}
  end
end