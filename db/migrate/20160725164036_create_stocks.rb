class CreateStocks < ActiveRecord::Migration
  
  def change
    create_table :stocks do |t|
      t.string :code
      t.string :company_name
      t.float :last_trade_price
      t.float :market_cap
      t.float :ebitda
      t.float :eps
      t.float :pe
      t.float :ma_50

      t.timestamps null: false
    end
  end
end
