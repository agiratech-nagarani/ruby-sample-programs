class Replacestring

  def self.another
    
  file_names = ['/home/agira/rubyprograms/programs/replacestring.txt']
  
  file_names.each do |file_name|
  text = File.read(file_name)
  new_contents = text.gsub(/amit/, "Amit kumar")
  puts new_contents 
  File.open(file_name, "w") {|file| file.puts new_contents }

    end

end

end
Replacestring.another
