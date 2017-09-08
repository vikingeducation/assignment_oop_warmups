class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message[0,143]
  end

  def each
    @tweets.each do |tweet|
      yield(tweet)
    end
  end

end

message1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a tristique justo. Aenean id pulvinar nunc. Nullam iaculis venenatis ante vel aENDmsan. Cras molestie ut ligula non venenatis."
message2 = "Cras molestie ut ligula non venenatis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a tristique justo. Aenean id pulvinar nEND nullam iaculis venenatis ante vel accumsan."

bot = Tweeter.new

bot.tweet(message1)
bot.tweet(message2)

bot.each {|msg| puts msg}
bot.map {|msg| puts msg.upcase}




