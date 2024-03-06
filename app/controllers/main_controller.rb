class MainController < ApplicationController
  def index
    @game = Game.new
  end

  def guess
    @game = Game.new
    @guessed_letters = @game.guessed_letters
    letter = params[:letter].upcase

    @guessed_letters << letter

    if !@game.word.include?(letter)
      @game.max_attempts -= 1
    end
  end
end