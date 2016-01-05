

class Tweeter
	
	include Enumerable

    def initialize
        @tweets = []
    end

    def tweet(message)
        # Your TODO: fill this in. 
        # This should add the first 144 characters
        # of any message to the @tweets array
        @tweets << message[0,144]
    end

    def each
    	@tweets.each {|item| yield(item)}
    end	

   def map
    	@tweets.map {|item| yield(item)}
    end	
end

t = Tweeter.new

# Add some tweets to our @tweets array
t.tweet("first message")
t.tweet("second message")

# Use Enumerable methods on the Tweeter instance
puts t.each{|msg| puts msg}.inspect
puts t.map{|msg| msg.upcase}