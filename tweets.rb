class Tweeter
    def initialize
        @tweets = []
    end

    def tweet(message)
        # Your TODO: fill this in.
        # This should add the first 144 characters
        # of any message to the @tweets array
        @tweets << message[0..143]
    end

    def each
      @tweets.each {|tweet| yield(tweet)}
    end

    def map
      @tweets.map { |tweet| yield(tweet) }
    end
end
