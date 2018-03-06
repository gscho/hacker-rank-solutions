#!/bin/ruby

n = gets.strip.to_i
arr = gets.strip
arr = arr.split(' ').map(&:to_i)

rev_arr = []
i = 0
while i < n do
  rev_arr << arr[n-i-1]
  i +=1
end

puts rev_arr.join(' ')
