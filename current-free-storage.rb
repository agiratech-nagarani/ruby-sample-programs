
class Storage
  def self.ramrom

output=%x(free)
output.split(" ")[7]
output.split(" ")[8]
output.split(" ")[9]

end
end

Storage.ramrom