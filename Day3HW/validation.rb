def valid_line?(input)
    valid_ops = ['6', 'L', 'N']
    valid_ops.include? input
end

def get_station(line)
    case line
    when '6'
        line = six_line
    when 'L'
        line = l_line
    when 'N'
        line = n_line
    end

    while true
        station_number = 1
        line.each do |station|
            puts "(#{station_number}) #{station[0..-3]}"
            station_number += 1
        end
        
        station_index = gets.chomp!.to_i
        
        unless station_index > 1 && station_index < line.length - 1
            puts "Invalid station number. Try again."
            next
        end
    end

    line, line[station_index]

end 
