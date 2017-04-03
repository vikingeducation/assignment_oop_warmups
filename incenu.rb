# Incrementing enumerables
class Tweeter
    def initialize
        @tweets = []
    end
    
    def tweets
      return @tweets
    end

    def tweet(message)
      message[0..143]

    end
end


test_message = "This is a test to see how the Tweeter class actually works when collecting the first 144 characters which I'm realizing is more than I thought--If you can read this then it didn't work."

t = Tweeter.new
puts t.tweet(test_message)
