def seperate
  "*" * 60
end
def team_score(array, input, team_name, sport_score, name, adversary, adversary_name) # The team_score method includes the if statement in the until loop, and takes several arguments.
  if array.include?(input)
    puts "#{team_name} are going against #{adversary_name} in week 2!"
    if sport_score < adversary
      puts "And the results are in! Lets see who won!"
      puts "..Please wait.."
      sleep(1.5)
      puts "Ohhhh! So close! You lost #{sport_score} to #{adversary}! Better luck next time!"
    elsif sport_score > adversary
      puts "And the results are in! Lets see who won!"
      puts "..Please wait.."
      sleep(1.5)
      puts "YOU WON BY A LAND SLIDE! Good job #{name}! #{team_name} score was #{sport_score} and the #{adversary_name} only scored #{adversary}!!"
    else
      puts "And the results are in! Lets see who won!"
      puts "..Please wait.."
      sleep(1.5)
      puts "It was a tie!!! #{team_name} score was #{sport_score} and the #{adversary_name} score was #{adversary} too!!"
    end
  end
end
def options(opt_a, opt_b, opt_c)
  puts "OPTIONS:\n
  a) #{opt_a}.\n
  b) #{opt_b}.\n
  c) #{opt_c}."
  puts " "
end

bet_option_a = ["a", "a)", "football"]
bet_option_b = ["b", "b)", "baseball"]
bet_option_c = ["c", "c)", "basketball"]

football_option_a = ["a", "a)", "patriots game"]
football_option_b = ["b", "b)", "dolphins game"]
football_option_c = ["c", "c)", "eagles game"]

baseball_option_a = ["a", "a)", "marlins game"]
baseball_option_b = ["b", "b)", "red sox game"]
baseball_option_c = ["c", "c)", "yankees game"]

basketball_option_a = ["a", "a)", "The Bulls"]
basketball_option_b = ["b", "b)", "The Knicks"]
basketball_option_c = ["c", "c)", "The Heat"]

restart_yn = ["no", "n", "quit", "enter"]

restart = nil
question = restart

prompt = "Your Answer: "
puts "Welcome to Bookie!!"
puts "What's your name?"
name = gets.chomp.capitalize

until ((restart_yn).include?(question))

  random = Random.new
  football_rand = random.rand(2..34)
  baseball_rand = random.rand(0..9)
  basketball_rand = random.rand(65..110)
  football_adversary = random.rand(2..34)
  baseball_adversary = random.rand(0..9)
  basketball_adversary = random.rand(65..110)

  sport_type = nil
  sport = sport_type
  banner = File.read('/Users/Dev./Desktop/Week 1 & 2/REPL/basketball hoop')
  puts banner
  until ((bet_option_a).include? sport ) || ((bet_option_b).include?(sport)) || ((bet_option_c).include?(sport))
    puts seperate
    puts "Hello #{name}, Let's start making some bets!"
    puts "What would you like to bet on?"
    options("Football", "Baseball", "Basketball")
    print prompt
    begin
      sport = gets.chomp.downcase
      puts " "
    rescue ArgumentError
      sport = nil
    end
  end

  if bet_option_a.include?(sport)

    football_bet = nil
    football = football_bet

    until ((football_option_a).include? football ) || ((football_option_b).include?(football)) || ((football_option_c).include?(football))
      puts seperate
      puts "So you chose to bet on Football. Good choice #{name}!"
      puts "Do you want to bet on the upcoming:"
      options("Patriots Game", "Dolphins Game", "Eagles Game")
      begin
        print prompt
        football = gets.chomp.downcase
        puts " "
      rescue ArgumentError
        football = nil
      end

      team_score(football_option_a, football, "The Patriots", football_rand, name, football_adversary, "The Dolphins")
      team_score(football_option_b, football, "The Dolphins", football_rand, name, football_adversary, "The Patriots")
      team_score(football_option_c, football, "The Eagles", football_rand, name, football_adversary, "The Patriots")

    end
  end

  if bet_option_b.include?(sport)

    baseball_team = nil
    baseball = baseball_team

    until ((baseball_option_a).include? baseball ) || ((baseball_option_b).include?(baseball)) || ((baseball_option_c).include?(baseball))
      puts seperate
      puts "Ohh, a baseball fan, huh? Lets see how lucky you are #{name}"
      options("Marlins Game", "Red Sox Game", "Yankees Game")
      begin
        print prompt
        baseball = gets.chomp.downcase
        puts " "
      rescue ArgumentError
        baseball = nil
      end
      team_score(baseball_option_a, baseball, "The Marlins", baseball_rand, name, baseball_adversary, "The Yankees")
      team_score(baseball_option_b, baseball, "The Red Sox", baseball_rand, name, baseball_adversary, "The Yankees")
      team_score(baseball_option_c, baseball, "The Yankees", baseball_rand, name, baseball_adversary, "The Marlins")
    end
  end

  if bet_option_c.include?(sport) then

    basketball_team = nil
    basketball = basketball_team

    until ((basketball_option_a).include? basketball ) || ((basketball_option_b).include?(basketball)) || ((basketball_option_c).include?(basketball))
      puts "Ohh, a basketball fan, huh? Lets see how lucky you are #{name}"
      options("Bulls Game", "Knicks Game", "Heat Game")
      begin
        print prompt
        basketball = gets.chomp.downcase
        puts " "
      rescue ArgumentError
        basketball = nil
      end
      team_score(basketball_option_a, basketball, "The Bulls", basketball_rand, name, basketball_adversary, "The Heat")
      team_score(basketball_option_b, basketball, "The Knicks", basketball_rand, name, basketball_adversary, "The Heat")
      team_score(basketball_option_c, basketball, "The Heat", basketball_rand, name, basketball_adversary, "The Bulls")
    end
  end

  p seperate
  puts "Would you like to restart? ( Y / N )"
  print prompt

  begin
    question = gets.chomp.downcase
  rescue ArgumentError
    question = nil
  end
end
