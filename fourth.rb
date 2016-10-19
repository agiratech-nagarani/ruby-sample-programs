file_names = ['/home/agira/rubyprograms/first.txt', '/home/agira/rubyprograms/second.txt']

file_names.each do |file_name|
  text = File.read(file_name)
  new_contents = text.gsub(/search_regexp/, "replacement string")

  # To merely print the contents of the file, use:
  puts new_contents

  # To write changes to the file, use:
  File.open(file_name, "w") {|file| file.puts new_contents }
end
