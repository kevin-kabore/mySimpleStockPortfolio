class StocksController < ApplicationController
  def welcome
    if user_signed_in?
      redirect_to stocks_path
    end
  end
  def index
    @stocks = Stock.all
  end

end
