file_names = ['/home/agira/rubyprograms/first.txt']

file_names.each do |file_name|
  text = File.read(file_name)
  new_contents = text.gsub(/hell/, "world")

  puts new_contents 

File.open(file_name, "w") {|file| file.puts new_contents }

end
