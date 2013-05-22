require 'pry'
@six_line = ['Grand Central.6', '33rd.6', '28th.6', '23rd.6', 'Union Square.6', 'Astor Place.6']
@n_line = ['Time Square.N', '34th.N', '28th.N', '32rd.N', 'Union Square.N', '8th.N']
@l_line = ['8th.L', '6th.L', 'Union Square.L', 'Astor Place.L']

def find_usr_start_stop
  while true
    puts "What line are you starting on?  6 L, or N"
    start_line = gets.chomp.upcase
    next unless valid_line?(start_line)
    puts "What station are you starting on?"
    start_array, start_station = get_station(start_line)
    puts "What line is your destination on?  6, L, or N"
    stop_line = gets.chomp.upcase
    next unless valid_line?(stop_line)
    puts "Where is your destination?"
    stop_array, stop_station = get_station(stop_line)
    get_distance(start_array, stop_array, start_station, stop_station)
    #puts start_station
    #puts stop_station
    break
  end
end


def get_distance(start_line, stop_line, start_station, stop_station)
  if start_line == stop_line  #check for same train line, if so, get difference of index number in that lines array
    #binding.pry
    answer=(start_line.index(start_station)-start_line.index(stop_station)).abs
  else
    #puts "different line"
    answer_part_1=(start_line.index(start_station)-start_line.index("Union Square"+start_station[-2..-1])).abs #start_station("Union Square"+last 2 digigs ferom start
    answer_part_2=(stop_line.index(stop_station)-stop_line.index("Union Square"+stop_station[-2..-1])).abs
    answer = answer_part_1+answer_part_2
  end
  puts answer
end


def valid_line?(input)
  valid_ops = ['6', 'L', 'N']
  valid_ops.include? input
end

def get_station(line)
  case line
  when '6'
    line = @six_line
  when 'L'
    line = @l_line
  when 'N'
    line = @n_line
  end

  while true
    station_number = 1
    line.each do |station|
      puts "(#{station_number}) #{station[0..-3]}"
      station_number += 1
    end

    station_index = gets.chomp.to_i - 1
    unless station_index >= 0 && station_index < line.length 
      puts "Invalid station number. Try again."
      next
    end
    break
  end
  return line, line[station_index]
end

find_usr_start_stop
