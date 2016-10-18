class String
def NullOrEmpty?
(self!=nil||self=="")
end
end
puts "text".NullOrEmpty?
puts "".NullOrEmpty?
