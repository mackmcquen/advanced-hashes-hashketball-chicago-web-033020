# Write your code here!
require "pry"

def game_hash
  hash = {:home =>
            {:team_name => "Brooklyn Nets",
             :colors => ["Black", "White"],
             :players => [
               {:player_name => "Alan Anderson",
                :number => 0,
                :shoe => 16,
                :points => 22,
                :rebounds => 12,
                :assists => 12,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1},
              {:player_name => "Reggie Evans",
                :number => 30,
                :shoe => 14,
                :points => 12,
                :rebounds => 12,
                :assists => 12,
                :steals => 12,
                :blocks => 12,
                :slam_dunks => 7},
              {:player_name => "Brook Lopez",
                :number => 11,
                :shoe => 17,
                :points => 17,
                :rebounds => 19,
                :assists => 10,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 15},
              {:player_name => "Mason Plumlee",
                :number => 1,
                :shoe => 19,
                :points => 26,
                :rebounds => 11,
                :assists => 6,
                :steals => 3,
                :blocks => 8,
                :slam_dunks => 5},
              {:player_name => "Jason Terry",
                :number => 31,
                :shoe => 15,
                :points => 19,
                :rebounds => 2,
                :assists => 2,
                :steals => 4,
                :blocks => 11,
                :slam_dunks => 1}]
},
          :away =>
            {:team_name => "Charlotte Hornets",
             :colors => ["Turquoise", "Purple"],
             :players => [
               {:player_name => "Jeff Adrien",
                :number => 4,
                :shoe => 18,
                :points => 10,
                :rebounds => 1,
                :assists => 1,
                :steals => 2,
                :blocks => 7,
                :slam_dunks => 2},
              {:player_name => "Bismack Biyombo",
                :number => 0,
                :shoe => 16,
                :points => 12,
                :rebounds => 4,
                :assists => 7,
                :steals => 22,
                :blocks => 15,
                :slam_dunks => 10},
              {:player_name => "DeSagna Diop",
                :number => 2,
                :shoe => 14,
                :points => 24,
                :rebounds => 12,
                :assists => 12,
                :steals => 4,
                :blocks => 5,
                :slam_dunks => 5},
              {:player_name => "Ben Gordon",
                :number => 8,
                :shoe => 15,
                :points => 33,
                :rebounds => 3,
                :assists => 2,
                :steals => 1,
                :blocks => 1,
                :slam_dunks => 0},
              {:player_name => "Kemba Walker",
                :number => 33,
                :shoe => 15,
                :points => 6,
                :rebounds => 12,
                :assists => 12,
                :steals => 7,
                :blocks => 5,
                :slam_dunks => 12}]
}
}
end

<<<<<<< HEAD
def num_points_scored(wanted_name)
=======
def points_scored(wanted_name)
>>>>>>> 996de25adab8247c7a95ba6e946bc7e368ee60c3
  game_hash.each do |place, team|
  team.each do |attributes, data|
    if attributes == :players
      data.each do |stats|
    if stats[:player_name] == wanted_name
return stats[:points]
end
end
end
end
end
end

def shoe_size(wanted_name)
  game_hash.each do |place, team|
  team.each do |attributes, data|
  if attributes == :players
    data.each do |stats|
  if stats[:player_name] == wanted_name
    return stats[:shoe]
end
end
end
end
end
end

def team_colors(wanted_team)
  game_hash.each do |place, team|
  if team[:team_name] == wanted_team
return game_hash[place][:colors]
end
end
end

def team_names
  result = []
  game_hash.each do |place, team|
  result.push(team[:team_name])
  end
  result
end

def player_numbers(wanted_team)
  result = []
  game_hash.each do |place, team|
  if team[:team_name] == wanted_team
    team.each do |attributes, data|
  if attributes == :players
    data.each do |stats|
result.push(stats[:number])
end
end
end
end
end
result
end

def player_stats(wanted_player)
  result = {}
  game_hash.each do |place, team|
  team.each do |attributes, data|
  if attributes == :players
  data.each do |stats|
  if stats[:player_name] == wanted_player
result = stats.delete_if do |key, value|
key == :player_name
end
end
end
end
end
end
result
end

<<<<<<< HEAD
def big_shoe_rebounds
  number_rebounds = 0
=======
def biggest_shoe
  rebounds = 0
>>>>>>> 996de25adab8247c7a95ba6e946bc7e368ee60c3
  max_shoe = 0
  game_hash.each do |place, team|
  team[:players].each do |player|
  if player[:shoe] > max_shoe
    max_shoe = player[:shoe]
<<<<<<< HEAD
    number_rebounds = player[:rebounds]
end
end
end
number_rebounds
=======
    rebounds = player[:rebounds]
end
end
end
rebounds
>>>>>>> 996de25adab8247c7a95ba6e946bc7e368ee60c3
end