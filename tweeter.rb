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

    def each
        i = 0 
        while i < @tweets.count
            yield(@tweets[i])
            i += 1
        end
        @tweets
    end 
end