require "sinatra"
require "sinatra/reloader"

helpers do
  def play(user)
    @computer = %w[rock paper scissors].sample

    @result = case user
    when "rock"
      if @computer == "rock"
        "tied"
      elsif @computer == "paper"
        "lost"
      else
        "won"
      end

    when "paper"
      if @computer == "rock"
        "won"
      elsif @computer == "paper"
        "tied"
      else
        "lost"
      end

    when "scissors"
      if @computer == "rock"
        "lost"
      elsif @computer == "paper"
        "won"
      else
        "tied"
      end
    end
  end
end

get("/") do
  erb(:index)
end

get("/rock") do
  play("rock")
  erb(:rock)
end

get("/paper") do
  play("paper")
  erb(:paper)
end

get("/scissors") do
  play("scissors")
  erb(:scissors)
end
