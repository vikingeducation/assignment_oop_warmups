class Tweeter
  include Enumerable

    def initialize
        @tweets = []
    end

    def each(&block)
      @tweets.each do |tweet|
        block.call(tweet)
      end
    end

    def tweet(message)
        if message.length > 144
          message = message[0..143]
        end
        @tweets << message
    end
end

t = Tweeter.new

t.tweet("first message")
t.tweet("second message")

t.each{|msg| puts msg}

t.map{|msg| puts msg.upcase}
