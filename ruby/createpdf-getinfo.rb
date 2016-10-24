require "prawn"
require "pdf-reader"

module Getpdf
  attr_accessor :info
  def intialize info
        @info=info
  end
end

class CreatePdf
  include Getpdf
  def employee_data
      @info={
              :Employeename=>"Nagarani",
              :contactinfo=>"nagarani@agiratech.com",
              :imagepath=>"/home/agira/ruby-sample-programs/ruby/logo-site.png"
            }
      Prawn::Document.generate("helloworld.pdf" ,:info=>@info) do
      text "Hello world !  \n how are you all  "
      image "/home/agira/ruby-sample-programs/ruby/logo-site.png"
      end
  end 
end

class Createpdf1 < CreatePdf
  def display_data
    reader = PDF::Reader.new("/home/agira/ruby-sample-programs/ruby/helloworld.pdf")
      puts reader.info
    reader.pages.each do |page|
      puts page.text
    end
  end
end

puts "we have to getting the information from our created pdf using prawn:"

c1=Createpdf1.new
c1.employee_data
c1.display_data
