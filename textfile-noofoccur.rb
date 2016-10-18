class Numberofoccur

def textfile
word_count = {}

File.open("/home/agira/rubyprograms/programs/noofoccur.txt", "r") do |f|
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



n=Numberofoccur.new
puts "each word how many times occuring in text file it will be shown"
n.textfile