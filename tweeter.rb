class Tweeter
    def initialize
        @tweets = []
    end

    def tweet(message)
      @tweets << message[0..144]
    end

    def each
      counter = 0
      while counter < @tweets.count
        yield @tweets[counter]
        counter += 1
      end
      @tweets
    end
end

t = Tweeter.new

t.tweet("first message")
t.tweet("second message")
p t
p t.each{|msg| puts msg}
t.extend(Enumerable)
p t.map{|msg| msg.upcase}