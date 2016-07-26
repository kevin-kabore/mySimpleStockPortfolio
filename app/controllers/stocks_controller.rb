class StocksController < ApplicationController
  def welcome
  end
  def index
    @stocks = Stock.all
  end

  def create
    # (buy button? Or in index?) prompts user to add quantity and purchase price
    # @portfolio_item  = Portfolio.new(params.require())
    # if @portfolio_item.save
    #   redirect_to "stocks#index"
    # else
    #   # ?
    # end

  end
end
