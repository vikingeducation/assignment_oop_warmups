
class Tweeter
	def initialize 
		@tweets = []
	end

	def tweet(message)
		@tweets << message[0..143]
	end

	def each
		i = 0
		while i < @tweets.length
			yield(@tweets[i])
			i += 1
		end
	end	
	include Enumerable
end




