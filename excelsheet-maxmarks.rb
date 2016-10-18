require 'spreadsheet'

class Exls
  attr_accessor :a,:b
  def self.marksheet a=Array.new,b=Array.new 
  
    @a=a
    @b=b
  
    Spreadsheet.open('/home/agira/rubyprograms/programs/mark.xls') do |book|
	  book.worksheet('Sheet1').each do |row,column|
		puts row=>column
		@a.push(row)
		@b.push(column)
      end
    end
    puts "#{@b.max} got hiighst marks among all"
  end
end

Exls.marksheet