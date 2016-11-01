class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    # Your TODO: fill this in.
    # This should add the first 144 characters
    # of any message to the @tweets array
  end
end

t = Tweeter.new

t.tweet("first message")
t.tweet("second message")
t.tweet("Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis repellat ipsum, ad fuga cumque sunt perferendis maxime necessitatibus voluptatem eius ratione aut repellendus omnis animi aspernatur voluptates, quidem quae nesciunt.")