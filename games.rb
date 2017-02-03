
def getGame(lastGame)
  games = ["Catan", "Monopoly", "Sorry", "Clue", "Chess"]
  game = lastGame
  until game != lastGame
    index = rand(games.length-1)
    game = games[index]
  end
  return game
end

def getLastGame
   File.read("last-game.txt")
end

def writeLastGame(game)
  File.write("last-game.txt", game)
end

lastGame = getLastGame()
game = getGame(lastGame)
writeLastGame(game)
puts game
