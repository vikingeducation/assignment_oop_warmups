class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def each (proc = nil)
    @tweets.size.times do |index|
      if block_given?
        yield @tweets[index]
      else
        proc.call(@tweets[index])
      end
    end
    @tweets
  end

  def tweet(message)
    @tweets << message[0..143]
  end

end