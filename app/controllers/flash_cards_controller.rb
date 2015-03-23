class FlashCardsController < ApplicationController
  def index
    @flash_cards = FlashCard.by_language(params[:lang]).shuffle
  end

  def new
  end

  def create
  end

  def show
  end
end
