require "sinatra"
require "sinatra/reloader"

npc = ["rock", "paper", "scissors"]

get("/") do
  erb(:index)
end

get("/:player_choice") do
  @pc = params.fetch("player_choice").downcase
  @npc = npc.sample

  case @pc
  when "rock"
    if @npc == "rock"
      @result = "We tied!"
    elsif @npc == "paper"
      @result = "We lost!"
    elsif @npc == "scissors"
      @result = "We won!"
    end
  when "paper"
    if @npc == "paper"
      @result = "We tied!"
    elsif @npc == "scissors"
      @result = "We lost!"
    elsif @npc == "rock"
      @result = "We won!"
    end
  when "scissors"
    if @npc == "scissors"
      @result = "We tied!"
    elsif @npc == "rock"
      @result = "We lost!"
    elsif @npc == "paper"
      @result = "We won!"
    end
  end
  erb(:game)
end

# get("/paper") do
#   @pc = "paper"
#   @npc_plays = npc.sample
#   case @npc_plays
#   when "rock"
#     @result = "We lost!"
#   when "paper"
#     @result = "We tied!"
#   when "scissors"
#     @result = "We won!"
#   end
#   erb(:game)
# end

# get("/scissors") do
#   @pc = "scissors"
#   @npc_plays = npc.sample
#   case @npc_plays
#   when "rock"
#     @result = "We lost!"
#   when "paper"
#     @result = "We won!"
#   when "scissors"
#     @result = "We tied!"
#   end
#   erb(:game)
# end
