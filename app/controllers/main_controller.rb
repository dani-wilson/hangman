class MainController < ApplicationController
  def index
    @game = Game.new
  end
end