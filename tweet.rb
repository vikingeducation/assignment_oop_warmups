class Tweeter
	def initialize
		@tweets = []
	end

	def tweet(message)
		@tweets << message[0..143]
	end

	include Enumerable
	# doesn't come with an each method - needs to be defined
	# Comparable - provides operators (provide <=>)

	def each(&block)
		@tweets.each do |item| # each calls array's each, not Tweeters
			yield(item)
		end
	end
end

t = Tweeter.new

# Add some tweets to our @tweets array
t.tweet("first message")
t.tweet("second message")

# Use Enumerable methods on the Tweeter instance
# t.each{|msg| puts msg}
#=> first message
#=> second message

# Note: You should NOT have defined this method explicitly!
#   ...it should come from Enumerable by default.
p t.map{|msg| msg.upcase}
#=> ["FIRST MESSAGE", "SECOND MESSAGE"]