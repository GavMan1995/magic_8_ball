@answers = ["well, duh....", "Dont ask me that", "are you kidding? NO!", "too high to think, ask again"]
@main = "---WELCOME TO MAGIC 8 BALL---\n Please ask a question!"

def restart
  puts 'would you like to restart? (y/n)'
  y_n = gets.strip.downcase
  if y_n == "y"
    main_page
  elsif y_n == "n"
    "have a nice day"
  else
    puts "enter y or n"
    restart
  end
end

def the_answer
  new_answer = @answers.shuffle
  message = new_answer[0]
  puts message
end

def main_page
  puts @main
  response = gets.strip
  the_answer
  restart
end

main_page
