def main_menu
  puts "--- Main Menu ---"
  puts "1: Command Line"
  puts "2: Search"
  puts "3: Exit"
  user_input = gets.to_i
end	

def command_line
	user_input = ''
	while user_input != 6
		puts "--- Command Line ---"
		puts "1: cp"
		puts "2: mv"
		puts "3: cd"
		puts "4: pwd"
		puts "5: mkdir"
		puts "6: Main Menu"
		user_input = gets.to_i
  		command_options(user_input.to_i)
  	end
end

def command_options(option)
	case option
	when 1 
		man_pages('cp')
	when 2
		man_pages('mv')
	when 3
		man_pages('cd')
	when 4
		man_pages('pwd')
	when 5
		man_pages('mkdir')
	when 6
		return
	else 
		puts "Bad User Input, Please Try Again."
		command_line
	end
end

def man_pages(cmd)
	puts `man #{cmd}`
end

def search
	puts "--- Enter search term ---"
	user_input = gets.strip.downcase
    man_pages(user_input)
end

while true
  case main_menu
    when 1
    	command_line
    when 2
    	search
  	when 3
  		exit(0)
    else
      puts "Bad User Input, Please Try Again."
      main_menu
  end
end
