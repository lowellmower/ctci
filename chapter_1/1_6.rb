# given an image represented in an N x N matrix
# where each pixel in the image is 4 bytes,
# write a method to rotate the image by 90
# degrees. Try to do this in place.

class Image

  attr_accessor :size

  def initialize(n)
    @size = Array.new(n) {Array.new(n){|i| Struct::Byte.new(4, i)}}
  end

  Struct.new("Byte", :size, :id)
end

def rotate(image)

end