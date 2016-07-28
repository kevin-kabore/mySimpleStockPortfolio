class AddProfitToPortfolio < ActiveRecord::Migration
  def change
    add_column :portfolios, :profit, :float, :default => 0
  end
end
