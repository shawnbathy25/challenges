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

  def blur_coords!
      blur_coords = []
      @picture.each_with_index do |row, i|
        row.each_with_index do |x, row_i|
          blur_coords << [i, row_i] if x == 1
        end
      end
       puts blur_coords.inspect

      blur_coords.each do |coord|
        row_index = coord[0]
        col_index = coord[1]

        @picture[row_index][col_index + 1] = 1 if col_index + 1 <= @picture[row_index].length - 1
        @picture[row_index][col_index - 1] = 1 if col_index - 1 >= 0
        @picture[row_index + 1][col_index] = 1 if row_index + 1 <= @picture.length - 1
        @picture[row_index - 1][col_index] = 1 if row_index - 1 >= 0
      end
    end

    

end

image = Image.new([
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 0, 0, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [0, 0, 0, 0, 1, 0],
  [0, 0, 0, 0, 0, 0]
])
image.blur_coords!
image.output_image