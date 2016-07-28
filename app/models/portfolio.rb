class Portfolio < ActiveRecord::Base
  attr_accessor :selling_price
  belongs_to :stock
  belongs_to :user
end
