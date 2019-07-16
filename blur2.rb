
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
    
   def blur
       @picture.each do |row|
         row.each do |col|
        if col == 1
          puts "#{row}, #{col}"
        elsif col[0] == 0 && col[1] == 0
          puts "#{row}, #{col}"
       
        end
          end
          end
    end
end       
    image = Image.new([
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
#image.output_image
image.blur