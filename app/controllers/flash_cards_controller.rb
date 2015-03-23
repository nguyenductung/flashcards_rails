class FlashCardsController < ApplicationController
  def index
    @flash_cards = FlashCard.all.shuffle
  end

  def new
  end

  def create
  end
end
