require "sinatra"
require "sinatra/reloader"

moves = ["rock", "paper", "scissors"]

get("/") do
  erb(:_0homepage)
end

get("/rock") do
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "tied"
  elsif @computer_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end

  erb(:_1rock)
end

get("/paper") do
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "won"
  elsif @computer_move == "paper"
    @outcome = "tied"
  else
    @outcome = "lost"
  end

  erb(:_2paper)
end

get("/scissors") do
  @computer_move = moves.sample
  if @computer_move == "rock"
    @outcome = "lost"
  elsif @computer_move == "paper"
    @outcome = "won"
  else
    @outcome = "tied"
  end

  erb(:_3scissors)
end
