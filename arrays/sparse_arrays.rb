#!/bin/ruby

#
# Complete the findSuffix function below.
#
def findSuffix(collections, queryString)
  collections
    .select{|s| s.eql?(queryString) }
    .size
end

fptr = File.open('./res', 'w')

strings_count = gets.to_i

strings = Array.new(strings_count)

strings_count.times do |strings_itr|
    strings_item = gets.to_s.rstrip
    strings[strings_itr] = strings_item
end

q = gets.to_i

q.times do |q_itr|
    queryString = gets.to_s.rstrip

    res = findSuffix strings, queryString

    fptr.write res
    fptr.write "\n"
end

fptr.close()
