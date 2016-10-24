module Change
 attr_accessor :filename
  def initialize 
      @file_names=filename
  end
  def another_string
      @file_names = ['/home/agira/ruby-sample-programs/ruby/replacestring.txt']
      @file_names.each do |file_name|
      text = File.read(file_name)
      new_contents = text.gsub(/ka/, "k")
      puts new_contents 
      File.open(file_name, "w") {|file| file.puts new_contents }
      end
  end
end
class ReplaceString
   extend Change
end
class ReplaceString1 < ReplaceString
end

ReplaceString1.another_string

