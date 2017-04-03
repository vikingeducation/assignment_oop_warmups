class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0..144]
  end

  def each(proc=nil)
    @tweets.each do |item|
      if block_given?
        yield(item)
      else
        proc.call(item)
      end
    end
  end

end


t = Tweeter.new

t.tweet("first message")
t.tweet("second message: I am going to try and make this message longer than 144 characters and see if it cuts its off or not, I don't know how many characters are here we will stop soon and see where it cuts off.")

t.each{|msg| puts msg}

t.map{|msg| puts msg.upcase}
