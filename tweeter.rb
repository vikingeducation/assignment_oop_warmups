class Tweeter
    def initialize
        @tweets = []
    end

    def each(prc=nil)
      @tweets.each {|t| yield t} if block_given?
      @tweets.each {|t| prc.call t} if prc
    end

    def tweet(message)
        if message.length <=144
          @tweets << message
        else
          @tweets << message[0..143]
        end
        # Your TODO: fill this in. 
        # This should add the first 144 characters
        # of any message to the @tweets array
    end
end

t=Tweeter.new
t.tweet("This is a test of the tweeter class.")
t.tweet("This is random long text: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam cursus ligula ante, ut feugiat leo vulputate et. Nunc fermentum rhoncus augue, eu varius quam scelerisque id. Fusce eu augue finibus, facilisis arcu a, auctor ex. Vivamus leo ante, vestibulum scelerisque enim quis, auctor consectetur elit. Vivamus vitae laoreet lorem. Quisque euismod luctus dui at accumsan. Nunc vitae tellus quis tortor varius porttitor in non ex. Maecenas vitae felis consequat, condimentum massa at, venenatis nisi.")
t.each {|t| puts t}