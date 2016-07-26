class PortfoliosController < ApplicationController
  def index
    @portfolio = Portfolio.where(:user_id => current_user.id)
  end

  def new
    @stock = Stock.find(params[:stock_id])
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:quantity, :purchase_price, :stock_id))
    @portfolio_item.user = current_user

    if @portfolio_item.save
      redirect_to portfolios_path
    else
      render :new
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    @quantity_sold = params[:portfolio][:quantity].to_i

    if @quantity_sold < @portfolio_item.quantity
      @portfolio_item.quantity -= @quantity_sold
      if @portfolio_item.save
        redirect_to portfolios_path
      else
        render :edit
      end
    elsif @quantity_sold == @portfolio_item.quantity
      destroy
    else
      flash[:notice] = "You cannot sell more than you own."
      render :edit
    end
  end

  def destroy
    # This is technically the sell All button
    @portfolio = Portfolio.find(params[:id])
    @portfolio.destroy
    redirect_to portfolios_path
  end
end
