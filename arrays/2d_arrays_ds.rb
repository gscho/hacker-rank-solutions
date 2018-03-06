#!/bin/ruby

arr = Array.new(6)
for arr_i in (0..6-1)
    arr_t = gets.strip
    arr[arr_i] = arr_t.split(' ').map(&:to_i)
end

def self.calculate_hourglass(arr, i, j)
  a = arr[i][j]
  b = arr[i][j+1]
  c = arr[i][j+2]
  d = arr[i+1][j+1]
  e = arr[i+2][j]
  f = arr[i+2][j+1]
  g = arr[i+2][j+2]
  a + b + c + d + e + f + g
end

res = []
for i in (0..4-1)
  for j in (0..4-1)
   res << calculate_hourglass(arr, i, j)
  end
end

puts res.max
