#need to finish with resetting the answers

@answers = ["well, duh....", "Dont ask me that", "are you kidding? NO!", "too high to think, ask again"]

def add
  puts "type a new answer"
  new_answer = gets.strip.downcase
    if @answers.include?(new_answer)
      puts "that question already exists"
      add
    elsif
      new_answer == "quit"
      puts "thank you come again"
      exit
    else
      @answers << "#{new_answer}\n"
    main_page
    end
end

def the_answer
  answer = @answers.shuffle
  message = answer[0]
  puts message
  main_page
end

def main_page
  puts "\n\n---WELCOME TO MAGIC 8 BALL---\n1. ask a question!\n2. add answer\n3. reset answers\n4. list of answers\ntype quit in any moment to exit magic 8 ball"
  response = gets.strip.downcase
  case response
  when "1"
      puts "ask question"
      ques = gets.strip
      the_answer
  when "2"
      add
  when "4"
    puts @answers
  when "quit"
    puts "thank you come again"
    exit
  end
  main_page
end

main_page
