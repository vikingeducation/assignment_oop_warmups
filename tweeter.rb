

# Application that needs to keep track of "Tweets" which will later be sent by using the Twitter API. To do so in an object-oriented fashion, it makes sense to make a special Tweeter class which contains all of the Tweet-related functionality.
class Tweeter

  include Enumerable

    def initialize
        @tweets = []
    end

    def tweet(message)
        # This should add the first 144 characters
        @tweets.push(message[0..143])
    end

    def each
      i = 0 
      while i < @tweets.size
        yield(@tweets[i])   
        i+=1
      end
      @tweets
    end
end
