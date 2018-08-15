require "./arraygen"

def basissort(arr, m, b)

  puts "b hat den Wert: #{b}\n"
  puts "\n"

  for n in 0..arr.length-1

    # Formel k ermittelt den Wert der zu betrachtenden Stelle.
    k = ((arr[n]%(10*b))-(arr[n]%(1*b))).to_s.chars.map(&:to_i).first
    puts "Die Zahl #{arr[n]} hat an der #{m}. Stelle die Ziffer #{k}\n"

    if k == 0
      @h0array.push(arr[n])
    elsif k == 1
      @h1array.push(arr[n])
    elsif k == 2
      @h2array.push(arr[n])
    elsif k == 3
      @h3array.push(arr[n])
    elsif k == 4
      @h4array.push(arr[n])
    elsif k == 5
      @h5array.push(arr[n])
    elsif k == 6
      @h6array.push(arr[n])
    elsif k == 7
      @h7array.push(arr[n])
    elsif k == 8
      @h8array.push(arr[n])
    else k == 9
      @h9array.push(arr[n])
    end
  end

  arr = [@h0array,@h1array,@h2array,@h3array,@h4array,@h5array,@h6array,@h7array,@h8array,@h9array].flatten

  @h0array = []
  @h1array = []
  @h2array = []
  @h3array = []
  @h4array = []
  @h5array = []
  @h6array = []
  @h7array = []
  @h8array = []
  @h9array = []

  #zu Beginn m = 1 >> Erste Stelle von Rechts jeder Zahl wird betrachtet.
  #Abbruch der Rekursion sobald letzte Stelle der größten Zahl/en des Arrays geordnet wurden.
  if m == arr.max.to_s.length
    return arr
  end

  puts "\n"

  # b*10 verschiebt die zu betrachtende Stelle für die Sortierung um 1 nach links.
  basissort(arr,m+1,b*10)

end

arraygen
arr = [234,3246,769,23,9,7653,45465,30917,64301,1,10,100,300,3004]
print arr
puts "\n"
print "\n #{basissort(arr,1,1)}"
