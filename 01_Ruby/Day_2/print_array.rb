# Get some random numbers so that I make sure the
# algorithm does not depend on ordering
a = (1..16).to_a.sort { rand() - 0.5 }

#Print the contents of an array of sixteen numbers,
#four numbers at a time, using just each.
print_group = []

puts 'Using each'
a.each do |item|
  print_group.push item
  if (print_group.length == 4)
    puts print_group.join(', ')
    print_group.clear
  end
end

# Now, do the same with each_slice in Enumerable.
puts "\nUsing each_slice"
a.each_slice(4) { |slice| puts slice.join(', ') }
