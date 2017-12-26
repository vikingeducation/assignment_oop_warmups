=begin
   Create a tweeter class to serve as a wrapper for a collection of tweets.
 It should have a method named tweet to add the first 144 characters of
 messages to the collection of tweets.
 Define an each instance method on Tweeter which iterates through all the
 tweets inside its @tweets collection.
 Include the Enumerable module into the Tweeter class.
=end

class Tweeter
  include Enumerable
    def initialize
      @tweets = []
    end

    def tweet(message)
      if message == [] || message == {}
        tweety = nil
      else
        tweety = message.to_s
      end
        if tweety.length > 144
          @tweets << tweety[0..143]
          puts "Message reduced to 144 characters"
        elsif tweety.length < 1
          puts "Can't make an empty tweet, try again"
        else
          @tweets << tweety
        end
    end

    def each(proc = nil)
      @tweets.each { |tweety| block_given? ? yield(tweety) : proc.call(tweety) }
    end
end

t = Tweeter.new
t.tweet("fISh")
t.tweet(15)
t.each{ |msg| puts msg }
puts t.map{ |msg| msg.upcase }
t.each( Proc.new { |msg| puts msg.downcase } )





















# spacing
