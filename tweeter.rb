class Tweeter

	include Enumerable

	 def initialize
        @tweets = [1, 2, 3]
    end

    def tweet(message)
    		@tweets << message[0..144]
    end

    def each(proc=nil)
    	i = 0
	    while i < @tweets.length
	      block_given? ? yield(@tweets[i]) : proc.call(@tweets[i])
	      i += 1    
	    end
    end
end

tweets = Tweeter.new
tweets.each{ |elem| p elem * 2 }
puts tweets.select{|elem| elem.odd? }

puts tweets.tweet("This is a common thing! Often when you have a collection that isn't quite as simple as a standard Array, you'll still want to be able to iterate over it using all your trusty Enumerable methods. That might be true if your object is a collection of Tweets like in this example but it's just as applicable if you've designed more complex User objects and you want to be able to easily iterate over collections of them.")