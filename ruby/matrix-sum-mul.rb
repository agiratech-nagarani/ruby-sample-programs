require 'matrix'

module Calculation
 attr_accessor :a_matrix,:b_matrix
 def initialize(a_matrix = Matrix[[2,2],[5,7]],b_matrix=Matrix[[1,2],[1,2]])
          @a_matrix = a_matrix
          @b_matrix=b_matrix
  end
end

class MatrisData
  include Calculation
  def add_matris 
    @a_matrix+@b_matrix
  end
  def mul_matris
    @a_matrix*@b_matrix
  end
 end

class Matris1Data < MatrisData
  def sub_matris
    @a_matrix-@b_matrix
  end
end

m1=Matris1Data.new 
puts "sum of two matrices #{m1.add_matris}"
puts "sum of two matrices #{m1.mul_matris}"
puts "sum of two matrices #{m1.sub_matris}"

m2=MatrisData.new(Matrix[[2,1,3],[2,1,3],[2,1,3]],Matrix[[2,1,3],[2,1,3],[2,1,3]])
puts "sum of two matrices #{m2.add_matris}"
puts "sum of two matrices #{m2.mul_matris}"

