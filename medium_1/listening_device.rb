class Device
  def initialize
    @recordings = []
  end

  def record(recording)
    @recordings << recording
  end

  def listen
    return unless block_given?

    if message = yield
      record message
    end
  end

  def play
    puts @recordings[-1]
  end
end

# Anything that is said is retrieved by this listening device via a block. 
# If nothing is said, then no block will be passed in. 
# The listening device can also output what was recently recorded using a 
# Device#play method.

listener = Device.new
listener.listen { "Hello World!" }
listener.listen
listener.play # Outputs "Hello World!"