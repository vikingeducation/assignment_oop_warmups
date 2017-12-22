=begin
(replace with actual description later)

Because that class will handle lots of individual tweets, we can assume that
an instance of Tweeter is really just a wrapper around a collection of these
tweets.

Instead of making an accessor for @tweets and accessing it directly from
outside of the Tweeter instance, we can treat the Tweeter instance as a
collection itself.

To do so, your task is:

1. Define an each instance method on Tweeter which iterates through all the
tweets inside its @tweets collection.

2. Include the Enumerable module into the Tweeter class. You should now have
access to all the Enumerable methods directly on any instance of Tweeter.
Specifically, you should now be able to do the following:

t = Tweeter.new
t.each{|msg| puts msg}

 require "pry"
 binding.pry
=end

class Tweeter
    def initialize
        @tweets = []
    end

    def tweet(message)
        # Your TODO: fill this in.
        # This should add the first 144 characters
        # of any message to the @tweets array
    end
end



















# spacing
