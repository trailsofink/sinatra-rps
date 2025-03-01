require "sinatra"
require "sinatra/reloader"

npc = ["rock", "paper", "scissors"]

get("/") do
  erb(:index)
end

get("/rock") do
  @pc = "rock"
  @npc_plays = npc.sample
  case @npc_plays
  when "rock"
    @result = "We tied!"
  when "paper"
    @result = "We lost!"
  when "scissors"
    @result = "We won!"
  end
  erb(:game)
end

get("/paper") do
  @pc = "paper"
  @npc_plays = npc.sample
  case @npc_plays
  when "rock"
    @result = "We lost!"
  when "paper"
    @result = "We tied!"
  when "scissors"
    @result = "We won!"
  end
  erb(:game)
end

get("/scissors") do
  @pc = "scissors"
  @npc_plays = npc.sample
  case @npc_plays
  when "rock"
    @result = "We lost!"
  when "paper"
    @result = "We won!"
  when "scissors"
    @result = "We tied!"
  end
  erb(:game)
end 
