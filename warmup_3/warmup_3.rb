# Object Oriented warmups II

# Warmup 3 -- Including Enumerable

class Tweeter
  include Enumerable

  def initialize
    @tweets = []
  end

  def tweet(message)
    @tweets << message.to_s[0...144]
  end

  def each
#    @tweets.each yield            Q. Why does this not work?
    @tweets.each { |item| yield(item) }
  end

  def map
#    @tweets.map yield(item)       Q. Why does this not work?
    @tweets.map { |item| yield(item) }
  end

end

# main

t = Tweeter.new

t.tweet("first message") 
t.tweet("second message") 
t.tweet("\nlong message > 144 chars ....\nlong message > 144 chars ....\nlong message > 144 chars ....\nlong message > 144 chars ....\nlong message > 144 chars ....")


puts "\n"
t.each { |msg| puts msg }    
  # print messages in lower case
puts "\n"
t.map { |msg| msg.upcase }
t.map { |msg| msg.upcase }.each { |msg| puts msg }    
  # print messages in upper case
puts "\n"

# end main


