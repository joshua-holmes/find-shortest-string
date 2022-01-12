def find_shortest_string(arr)

  lengths = arr.map { |s| s.length }
  min = lengths.min
  index = lengths.find_index min
  arr[index]

  ## This version was 28% slower
  # shortest = nil
  # arr.each_with_index do |s, i|
  #   shortest = s if i == 0 || s.length < shortest.length
  # end
  # shortest
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
  strings = ['flower', 'juniper', 'lily', 'dadelion']

  before = Time.now
  1000000.times { find_shortest_string strings }
  after = Time.now

  puts "#{after - before} seconds"
end

# Please add your pseudocode to this file
# And a written explanation of your solution
=begin 
map over original array to get array of lengths
find min of that arr
find index of that min
return shortest letter using index and original array
=end