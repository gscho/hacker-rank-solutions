#!/bin/ruby

initial_values = gets.strip.split(' ').map(&:to_i)

n = initial_values[0]
q = initial_values[1]
last_answer = 0

arr = []
for i in (0..q-1)
    input = gets.strip
    arr[i] = input.split(' ').map(&:to_i)
end

seq_list = []
for i in (0..n-1)
  seq_list[i] = []
end

arr.each do |query|
  type = query[0]
  x = query[1]
  y = query[2]
  index = ((x ^ last_answer) % n)
  if type.eql? 1
    seq_list[index].push y
  elsif type.eql? 2
    sub_index = (y % seq_list[index].size)
    last_answer = seq_list[index][sub_index]
    puts last_answer
  end
end
