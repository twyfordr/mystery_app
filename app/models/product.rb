class Product < ActiveRecord::Base
  attr_accessible :name, :price, :description, :price
  validates :name, :price, :description, :presence => true
end
