class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  # adds the first 144 characters of
  # message to the @tweets array
  def tweet(message)
    @tweets.push(message[0..143])
  end

  def each(proc = nil)
    if block_given?
      @tweets.size.times { |i| yield @tweets[i] }
    elsif !proc.nil?
      @tweets.size.times { |i| proc.call(@tweets[i]) }
    end

    @tweets
  end
end
