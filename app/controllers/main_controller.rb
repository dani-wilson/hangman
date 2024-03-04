class MainController < ApplicationController
  def index
    @game = Game.new
  end

  def guess
    letter = params[:letter].downcase

    @guessed_letters << letter

    respond_to do |format|
      format.js { render 'update_letter_bank' }
    end
  end
end