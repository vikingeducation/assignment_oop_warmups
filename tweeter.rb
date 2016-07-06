class Tweeter
    
    include Enumerable

    def initialize
        @tweets = []
    end

    def tweet(message)
        # Your TODO: fill this in. 
        # This should add the first 144 characters
        # of any message to the @tweets array

        @tweets << message[0..143]
    end

    def each(&block)
      @tweets.each do |tweet|
        block.call(tweet)
      end
    end

end

tweeter = Tweeter.new
tweeter.tweet("hello")
tweeter.tweet("goodbye")

tweeter.each { |tweet| puts tweet }
tweeter.map { |tweet| puts tweet.upcase }