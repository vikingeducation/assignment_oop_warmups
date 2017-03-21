# tweeter.rb
class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    # Your TODO: fill this in.
    # This should add the first 144 characters
    # of any message to the @tweets array
    @tweets.push(message[0...144])
  end

  def each
    @tweets.each do |ele|
      yield(ele)
    end
  end
end

t = Tweeter.new

# Add some tweets to our @tweets array
t.tweet('first message')
t.tweet('second message')
t.tweet('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx12345')

# Use Enumerable methods on the Tweeter instance
t.each { |msg| puts msg }
#=> first message
#=> second message

# Note: You should NOT have defined this method explicitly!
#   ...it should come from Enumerable by default.
p t.map(&:upcase)
