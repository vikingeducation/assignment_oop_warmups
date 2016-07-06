class Tweeter
  include Enumerable
    def initialize
        @tweets = []
    end

    def tweet(message)

        @tweets << message[0..143]


    end

    def each
      @tweets.size.times { |n| yield(@tweets[n])}
    end
end

t = Tweeter.new

# Add some tweets to our @tweets array
t.tweet("first message")
t.tweet("x" * 144 + 'you shouldnt see this')

# Use Enumerable methods on the Tweeter instance
t.each{|msg| puts msg}

t.select{|msg| msg.include?('x')}