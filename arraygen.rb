
def arraygen()

  puts "Vor counter, Nach counter, Arrayanzahl"
  i = gets.chomp
  k = gets.chomp

  for n in 0..gets.chomp.to_i-1 do
    array = Array.new
    array[0] = "#{i}"
    array[1] = n
    array[2] = "#{k}"
    variable_name = array.join.to_str
    instance_variable_set("@#{variable_name}", Array.new)
    print variable_name
    puts "\n"
  end
end
