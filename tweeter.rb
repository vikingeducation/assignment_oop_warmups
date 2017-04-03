class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..144]
  end

  def each
    current_index = 0
    until @tweets.length == current_index
      if block_given?
        yield @tweets[current_index]
      else
        @tweets[current_index]
      end
      current_index += 1
    end
  end

end


t = Tweeter.new

t.tweet("first message")
t.tweet("second message: I am going to try and make this message longer than 144 characters and see if it cuts its off or not, I don't know how many characters are here we will stop soon and see where it cuts off.")

t.each{|msg| puts msg}

t.map{|msg| puts msg.upcase}
