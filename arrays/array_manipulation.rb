#!/bin/ruby

#
# Complete the arrayManipulation function below.
#
def arrayManipulation(n, queries)
  arr = Array.new(n,0)
  max = 0
  queries.each do |q|
    a = q[0] - 1
    b = q[1] - 1
    k = q[2]
    a.upto(b) do |i|
      arr[i] += k
      max = arr[i] unless max > arr[i]
    end
  end
  max
end

fptr = File.open('./res.txt', 'w')

nm = gets.rstrip.split

n = nm[0].to_i

m = nm[1].to_i

queries = Array.new(m)

m.times do |queries_row_itr|
    queries[queries_row_itr] = gets.rstrip.split(' ').map(&:to_i)
end

result = arrayManipulation n, queries

fptr.write result
fptr.write "\n"

fptr.close()
