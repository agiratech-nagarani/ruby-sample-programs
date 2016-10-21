require 'matrix'

module Calculation
attr_accessor :a_matrix,:b_matrix
 def initialize a_matrix = Matrix[[2,2],[5,7]],b_matrix=Matrix[[1,2],[1,2]]
          @a_matrix = a_matrix
          @b_matrix=b_matrix
      end

end

class Matris
    include Calculation
  
      def add 
        @a_matrix+@b_matrix
      end

      def mul
        @a_matrix*@b_matrix
      end
      

end

class Matris1 < Matris

      def sub
        @a_matrix-@b_matrix
      end
end


m1=Matris1.new 
puts "sum of two matrices #{m1.add}"
puts "sum of two matrices #{m1.mul}"
puts "sum of two matrices #{m1.sub}"

m2=Matris.new

m2.a_matrix=Matrix[[2,1,3],[2,1,3],[2,1,3]]
m2.b_matrix=Matrix[[2,1,3],[2,1,3],[2,1,3]]

puts "sum of two matrices #{m2.add}"
puts "sum of two matrices #{m2.mul}"

