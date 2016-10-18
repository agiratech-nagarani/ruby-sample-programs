class Compare_files

def self.listmatchedlines

            f1=File.open('/home/agira/rubyprograms/programs/first.txt')
            f2=File.open('/home/agira/rubyprograms/programs/second.txt')

            file1=f1.readlines
            file2=f2.readlines

            file1.each do |line|
            if(file2.include?(line))
            puts line
            end
            end
end
end

puts "matched lines in 2 text files: "
Compare_files.listmatchedlines
#puts "matched lines in two files #{Compare_files.listmatchedlines}"