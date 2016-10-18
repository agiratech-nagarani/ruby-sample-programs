require "prawn"
require "pdf-reader"

class Createpdf
def self.employee

        info={
        :Employeename=>"Nagarani",
        :contactinfo=>"nagarani@agiratech.com",
        :imagepath=>"/home/agira/ruby-sample-programs/logo-site.png"
        }

        Prawn::Document.generate("helloworld.pdf" ,:info=>info) do
        	  text "Hello World!  \n how are you all  "
         
        	  image "/home/agira/rubyprograms/programs/logo-site.png"
        end

        reader = PDF::Reader.new("/home/agira/rubyprograms/programs/helloworld.pdf")
        puts reader.info
        reader.pages.each do |page|
     	     puts page.text
	       end
  end 
end

puts "we have to getting the information from our created pdf using prawn:"
Createpdf.employee
