require 'pry'

class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..140]
  end

  def each
    @tweets.length.times { |element| yield @tweets[element] }
  end
end

pry.binding
