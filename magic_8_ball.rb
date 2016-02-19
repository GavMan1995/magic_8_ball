@easter_egg = {
  "what is your favorite band" => "yellow card",
  "what is your favorite food" => "sushi",
  "who do you love" => "Jessie, im going to marry her",
  "what do you like to do" => "write this crazy code stuff",
}

@answers = ["well, duh....", "Dont ask me that", "are you kidding? NO!", "too high to think, ask again"]
@user_answers = []

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
      @user_answers << new_answer
    main_page
    end
end

def the_answer
  answer = @answers + @user_answers
  random_answer = answer.shuffle
  message = random_answer[0]
  puts message
  main_page
end

def main_page

  puts "\n\n---WELCOME TO MAGIC 8 BALL---\n please ask a question"
  @response = gets.strip.downcase
  if @response == "quit"
    puts "thank you come again"
  elsif @easter_egg.has_key?(@response)
    puts @easter_egg[@response]
    main_page
  else
    the_answer
  end
  # case response
  # when
  #     puts "ask question"
  #     ques = gets.strip
  #     the_answer
  # when "2"
  #     add
  # when "4"
  #   puts @answers + @user_answers
  # when "quit"
  #   puts "thank you come again"
  #   exit
  # end
  # main_page
end

main_page
