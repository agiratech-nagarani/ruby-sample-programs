=begin
array=['hh','gg','bb']
for index in (0..array.length-1)
puts "at position #{index}:#{array[index]}"
end


Mr_count = 0
module Foo
Mr_count=0
::Mr_count=1
Mr_count=2
end
puts Mr_count
puts Foo::Mr_count

=end

CONST = ' out there'
class Inside_one
   CONST = proc {' in there'}
   def where_is_my_CONST
      ::CONST + ' inside one'
   end
end
class Inside_two
   CONST = ' inside two'
   def where_is_my_CONST
      CONST
   end
end
puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST
puts Object::CONST + Inside_two::CONST
puts Inside_two::CONST + CONST
puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST
