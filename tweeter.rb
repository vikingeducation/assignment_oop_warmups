# The Tweeter class is responsible for taking in a message and tweeting it.
class Tweeter
  include Enumerable
  
  def initialize
    @tweets = []
  end

  def tweet(message)
      @tweets << get_short_message(message)
  end

  def each(proc_argument = nil)
    @tweets.each do |tweet|
      block_given? ? yield(tweet) : proc_argument.call(tweet)
    end
  end

  private
  def get_short_message(message)
    message.length > 144 ? message[0..144] : message
  end
end
