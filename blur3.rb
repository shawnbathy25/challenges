class Image
  attr_accessor :picture
 
  def initialize(pic)
     self.picture = pic
    
    end

 

 
  def output_image
    @picture.each do |row|
      puts row.join("")
   end
  end

    def blur!(distance=2)
    distance.times do
      blur_coords!
    end
  end

  private

  def blur_coords!
      blur_coords = []
      @picture.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          blur_coords << [i, row_i] if x == 1
        end
      end

      blur_coords.each do |coord|
        @picture[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @picture[coord[0]].length - 1
        @picture[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
        @picture[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @picture.length - 1
        @picture[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
      end
    end

    

end

image = Image.new([
  [0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0]
])
#image.blur_coords!
image.blur!
image.output_image