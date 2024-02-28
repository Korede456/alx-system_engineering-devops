#!/usr/bin/env ruby
# Regex pattern to match sender, receiver, and flags
pattern = /\[from:([^\]]+)\] \[to:([^\]]+)\] \[flags:([^\]]+)\]/

input_string = ARGV[0]

match_data = input_string.match(pattern)

if match_data
  sender = match_data[1]
  receiver = match_data[2]
  flags = match_data[3]

  puts "#{sender},#{receiver},#{flags}"
else
  puts "No match found in the input string."
end
