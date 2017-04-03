class Tweeter
	include Enumerable

	def initialize
		@tweets = []
	end

	def tweet(message)
		@tweets << message[0...144]
	end

	def each
		@tweets.each do |msg|
			yield msg
		end
	end

end

t = Tweeter.new

t.tweet("First message")
t.tweet("Second message")

t.each {|msg| puts msg}

t.map {|msg| puts msg.upcase}