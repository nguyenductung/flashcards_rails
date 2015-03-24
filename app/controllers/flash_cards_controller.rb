class FlashCardsController < ApplicationController
  def index
    @flash_cards = FlashCard.by_language(params[:lang]).shuffle
  end

  def new
    @flash_card = FlashCard.new
    @flash_cards = FlashCard.by_language(params[:lang])
      .order('rand()').limit(10)
  end

  def create
    @flash_card = FlashCard.create flash_card_params
    redirect_to flash_card_path(@flash_card)
  end

  def show
    @flash_card = FlashCard.find(params[:id])
    @flash_cards = FlashCard.by_language(params[:lang])
      .where.not(id: @flash_card.id).order('rand()').limit(10)
  end

  private

  def flash_card_params
    params.require(:flash_card)
      .permit(:word, :pronunciation, :meaning, :language)
  end
end
