module Change
attr_accessor :filename

    def initialize 
      @file_names=filename
    end

      def another
      @file_names = ['/home/agira/ruby-sample-programs/replacestring.txt']
      @file_names.each do |file_name|
      text = File.read(file_name)
      new_contents = text.gsub(/k/, "ka")
      puts new_contents 
      
            File.open(file_name, "w") {|file| file.puts new_contents }

        end

      end

end


class Replacestring

extend Change

end

class Replacestring1 < Replacestring
end

Replacestring1.another

