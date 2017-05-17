class Tweeter

  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets.push(message[0..143])
  end

  def each
    if block_given?
      @tweets.each do |tweet|
        yield(tweet)
      end
    end
  end
end



t = Tweeter.new

puts "Adding some tweets to the array..."

t.tweet("first message")
t.tweet("second message")

puts "\nPrinting out array using Enumerable each method...\n\n"
t.each{|msg| puts msg}
puts

puts "\nUppercasing each tweet using the Enumerable map method...\n\n"
p t.map{|msg| msg.upcase}