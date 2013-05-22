=begin
3 arrays
which array is start and stop in
if same  absdiff of start and stop index
else absdiff start and union sq  +abs dif of union sq and stop'
=end
six_line = ['Grand Central.6', '33rd.6', '28th.6', '23rd.6', 'Union Square.6', 'Astor Place.6']
n_line = ['Time Square.N', '34th.N', '28th.N', '32rd.N', 'Union Square.N', '8th.N']
l_line = ['8th.L', '6th.L', 'Union Square.L', 'Astor Place.L']
def find_usr_start_stop
	puts "What line are you starting on?  6, L, or N"
	s_line = get.chomp.upcase
	next unless valid_line?(s_line)
	s_station = get_station(s_line)






	case s_line
	when '6'
		puts "At what stations are you starting? 1)Grand Central.6', '33rd.6', '28th.6', '23rd.6', 'Union Square.6', 'Astor Place.6'
	when 'L'
		puts  
	when "N"
		puts
	next unless valid_station?()
	
	if 
		puts "What station are you starting at?"