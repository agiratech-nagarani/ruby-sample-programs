require "prawn"
require "pdf-reader"

module Getpdf

  attr_accessor :info

        def intialize info
        @info=info
        end
end

class Createpdf
  include Getpdf
            def employee
                      
                    @info={
                    :Employeename=>"Nagarani",
                    :contactinfo=>"nagarani@agiratech.com",
                    :imagepath=>"/home/agira/ruby-sample-programs/ruby/logo-site.png"
                    }

                    Prawn::Document.generate("helloworld.pdf" ,:info=>@info) do
                    	  text "Hello world !  \n how are you all  "
                     
                    	  image "/home/agira/ruby-sample-programs/logo-site.png"
                    end

                    
              end 
end

class Createpdf1 < Createpdf

        def displa
        reader = PDF::Reader.new("/home/agira/ruby-sample-programs/ruby/helloworld.pdf")
                puts reader.info
                reader.pages.each do |page|
                     puts page.text
                   end

        end

end

puts "we have to getting the information from our created pdf using prawn:"

c1=Createpdf1.new
c1.employee

c1.displa
