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
        i = 0 
        while i < @tweets.count
            yield(@tweets[i])
            i += 1
        end
        @tweets
    end 
end

=begin
Instead of making an accessor for @tweets and accessing it directly from outside of the Tweeter instance, we can treat the Tweeter instance as a collection itself.

To do so, your task is:

    Define an each instance method on Tweeter which iterates through all the tweets inside its @tweets collection.
    Include the Enumerable module into the Tweeter class.
=end
