require 'spreadsheet'

module Sheet

  attr_accessor :a,:b

     def initialize a=Array.new,b=Array.new
          @@a=a
          @@b=b
     end
end


class Exls
  include Sheet
  
  def marksheet  
      puts "subject=>marks"
   Spreadsheet.open('/home/agira/ruby-sample-programs/ruby/mark.xls') do |book|
	  book.worksheet('Sheet1').each do |row,column|
		puts row=>column
		@@a.push row
		@@b.push column
      end
    end
    
   end
end


class Exlsh < Exls

    def self.pri
      puts "#{@@b.max} got hiighst marks among all"
    end

end

Exlsh.new.marksheet
Exlsh.pri