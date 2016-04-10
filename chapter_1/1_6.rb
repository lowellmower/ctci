# given an image represented in an N x N matrix
# where each pixel in the image is 4 bytes,
# write a method to rotate the image by 90
# degrees. Try to do this in place.

class Image

  attr_accessor :size

  def initialize(height, width)
    i = 0
    @size = Array.new(height) {Array.new(width){Struct::Byte.new(4, i+=1)}}
  end

  Struct.new("Byte", :size, :id)

  def rotate
    @size.each_with_index do |_,i|
      (0...i).each do |j|
        @size[j][i], @size[i][j] = @size[i][j], @size[j][i]
      end
    end
  end

end

