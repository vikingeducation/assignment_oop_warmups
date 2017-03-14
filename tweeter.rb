class Tweeter
    include Enumerable

    def initialize
        @tweets = []
    end

    def tweet(message)
        @tweets << message[0..143]
    end

    def each
      (@tweets.length).times {|i| yield @tweets[i]}
    end
end

t = Tweeter.new

t.tweet("First message")
t.tweet("Second message")

t.each{|msg| puts msg}
t.map{|msg| msg.upcase}