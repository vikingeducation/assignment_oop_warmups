class Tweeter

include Enumerable

  def initialize
    @tweets = []
  end

#----------

  def tweet(message)

    if message.length < 145
      @tweets.push(message)
    else
      @tweets.push(message.slice(0, 144))
    end

  end

#----------

  def each

    yield(@tweets)

  end

#----------

  def map

    @tweets.map { |e| yield(e) }

  end


end


t = Tweeter.new

t.tweet("first message")
t.tweet("second message")
t.tweet("third message")

p t.each { |e| puts e }

p t.map { |e| e.upcase }