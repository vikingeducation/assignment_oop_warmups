class Tweeter
  include Enumerable
    def initialize
        @tweets = []
    end

    def tweet(message)
        @tweets << message[0,143]
    end

    def each
      @tweets.each do |i|
        yield(i)
      end
    end
end
