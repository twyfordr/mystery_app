require 'rails_helper'

feature 'products' do
  scenario 'unauthed user lists products' do
    visit products_path
  end
end
