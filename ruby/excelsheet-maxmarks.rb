require 'spreadsheet'

module Sheet
  attr_accessor :a,:b
  def initialize(a=Array.new,b=Array.new)
    @@a=a
    @@b=b
  end
end

class ExlsSheet
  include Sheet
  def mark_sheet  
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

class ExlshSheet < ExlsSheet
  def self.max_marks
      puts "#{@@b.max} got hiighst marks among all"
  end
end

ExlshSheet.new.mark_sheet
ExlshSheet.max_marks