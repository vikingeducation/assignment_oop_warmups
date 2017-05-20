class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message.to_s[0..143]
  end

  def each(&proc)
    return to_enum :each unless proc

    @tweets.each { |i| yield(i) }
  end
end
