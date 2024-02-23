class Game
  attr_accessor :word,
                :guessed_letters,
                :max_attempts

  def initialize
    @word = word_bank.sample
    @guessed_letters = []
    @max_attempts = 8
  end

  private

  def word_bank
    words = [
      "tropical",
      "flighty",
      "wingspan",
      "lupine",
      "terrifying",
      "dumbfounded",
      "sequel",
      "turquoise",
      "cerulean",
      "deposit",
      "belfry",
      "haggard",
      "crafty",
      "lunar",
      "eclipse",
      "breadstick",
      "meteorite",
      "signaling",
      "treasure",
      "district",
      "struggle",
      "patience",
      "assaulting",
      "detrimental",
      "angelic",
      "calming",
      "exponentially"
    ]
  end
end