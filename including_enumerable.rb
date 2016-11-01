class Tweeter
  #include Enumerable
    def initialize
        @tweets = []
    end

    def tweet(message)
        # Your TODO: fill this in. 
        # This should add the first 144 characters
        # of any message to the @tweets array

        @tweets << message
    end

    def each
      @tweets.size.times do |i|
        yield(self[i])
      end
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
t.map{|msg| msg.upcase}
#=> ["FIRST MESSAGE", "SECOND MESSAGE"]