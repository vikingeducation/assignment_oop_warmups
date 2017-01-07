class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message
    return
  end

  def each(my_proc = nil)
    temp = []
    @tweets.size.times do |i|
      temp << yield(@tweets[i]) if block_given?
      temp << my_proc.call(@tweets[i]) if my_proc
    end

    return temp
  end
end
