class StocksController < ApplicationController
  def welcome
    if user_signed_in?
      redirect_to stocks_path
    end
  end
  def index
    if !current_user
      redirect_to root_path
    end
    @stocks = Stock.all
  end

end
