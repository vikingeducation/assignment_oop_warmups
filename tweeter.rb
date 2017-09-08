class Tweeter
  def initialize
    @tweets = []
  end

  def tweet(message)
    p message[0,143]
  end
end

post = Tweeter.new
message1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a tristique justo. Aenean id pulvinar nunc. Nullam iaculis venenatis ante vel aENDmsan. Cras molestie ut ligula non venenatis."
message2 = "Cras molestie ut ligula non venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a tristique justo. Aenean id pulvinar nEND. Nullam iaculis venenatis ante vel accumsan."

post.tweet(message1)
