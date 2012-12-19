# coding: utf-8
def solve(max,a,b)
  ((1...max).select{|n| n % a == 0 } +
   (1...max).select{|n| n % b == 0 }).
   uniq.
   inject(0){|sum,n| sum += n }
end
p solve(1000,3,5)
