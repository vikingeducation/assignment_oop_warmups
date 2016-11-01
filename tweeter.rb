class Tweeter
    include Enumerable
    def initialize
        @tweets = []
    end

    def tweet(message)
        @tweets << message[0..143]
    end

    def each
      @tweets.each do |item|
        yield item
      end
    end
end

t = Tweeter.new

t.tweet("hello!")
t.tweet("horld!")

puts t.map{|msg| msg.upcase}
t.each{|msg| print msg}