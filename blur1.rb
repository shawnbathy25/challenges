
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
    

    
end      


image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.output_image