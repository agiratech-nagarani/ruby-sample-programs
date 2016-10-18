class Recursion
  def self.sum_of_digits(number) 
	   sum=0
	   while number > 0 do 
	   sum=sum+(number%10)
	   number=number/10
	   end
	 return sum
  end
end


print "your choice number:"
num=gets.chop.to_i
p "sum of digits of ur number is #{Recursion.sum_of_digits(num)}"
