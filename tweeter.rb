class Tweeter
  include Enumerable

    def initialize
        @tweets = []
    end

    def tweet(message)
      @tweets << message[0..140].gsub(/\s+\z/, "")
    end

    def each(&block)
      @tweets.each { |tweet| yield(tweet) }
    end

end