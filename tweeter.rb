class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def each
    @tweets.each do |item|
      yield(item)
    end
  end


  def tweet(message)
    @tweets << message[0..143]
  end
end

t = Tweeter.new

t.tweet("first message")
t.tweet("second message")
t.tweet("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis repellat ipsum, ad fuga cumque sunt perferendis maxime necessitatibus voluptatem eius ratione aut repellendus omnis animi aspernatur voluptates, quidem quae nesciunt.")

t.each { |t| puts t }

t.map { |t| puts t }