class Numberofoccur
def self.inpdf

 word_count = {}

  File.open("/home/agira/rubyprograms/programs/first.pdf", "r") do |f|
  f.each_line do |line|
  words = line.split(' ').each do |word|
      word_count[word] += 1 if word_count.has_key? word
      word_count[word] = 1 if not word_count.has_key? word
    end
  end
end

puts word_count 
end
end

puts "we get number of string  occurence in pdf file "
Numberofoccur.inpdf