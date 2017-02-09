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

# Add some tweets to our @tweets array
t.tweet("first message")
t.tweet("second message")

# Use Enumerable methods on the Tweeter instance
t.each{|msg| puts msg}
#=> first message
#=> second message

# Note: You should NOT have defined this method explicitly!
#   ...it should come from Enumerable by default.
t.map{|msg| puts msg.upcase}
#=> ["FIRST MESSAGE", "SECOND MESSAGE"]
