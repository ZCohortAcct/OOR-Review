require 'pry'
class Flower

  # this is the setter/writter
  # setting attribute value
  # def color=(my_color) # instance method
  #   @color = my_color # 'my_color' local variable 
  #   # SCOPE of local variable is the method, AKA can't access/call outside the method
  # end

  # getter/reader
  # reading attribute value
  # def color # instance method
  #   @color # instance variable, has the '@'
  #   # SCOPE of instance variable is the entire instance of the class, AKA it can accessed
  #   # inside instance method
  # end

  # need obj of the class to access instance varibale (aka ATTRIBUTES) inside class method
  # class method
  def self.flowers
    @@flowers # class variables, has '@@'
    # SCOPED: the class, it can be accessed in the class & also ANY method

  end

  attr_accessor :color, :height
  # macro creates reader & writter methods

  attr_reader :shape

  @@flowers = []
  def initialize(hue, design)
    # add attribues upon creation
    @color = hue
    @shape = design
    @pedal = 'oval'
    # to determing the value of self, ASK: WHAT KIND OF METHOD IS THIS??? (instance || class)
     @@flowers << self # what is the value??? - instance

  end

  def self.find_by_color(color_choosen)
    # what's the value of self??? - CLASS
    # self.flowers.select{|instance| instance.color == 'red'}
    #@@flowers.select{|instance| instance.color == 'red'}
    # self.select{|instance| instance.color == color_choosen}
    @@flowers.select{|instance| instance.color == color_choosen}
  end

  #flower1.pedal
  #=> msg: When born my pedals are .....

  # instance method, reader method
  # '#{} -> interpolation!!!! tells ruby to read variable values in a STR
  def pedal
    puts self
    puts "When born, my pedals are #{@pedal}"
  end

end

# call/reference class
Flower

# 2 kinds of methods inside a class ~> INSTANCE METHODS && CLASS METHODS

# creates an new flower object AKA instance
# INSTATITION
flower1 = Flower.new('red', 'zig-zag')
Flower.new('yellow', 'zig-zag')
Flower.new('red', 'straight')
Flower.new('orange', 'circular')
Flower.new('yellow', 'straight')

binding.pry