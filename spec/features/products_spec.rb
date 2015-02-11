require 'rails_helper'

feature 'products' do
  scenario 'unauthed user lists products' do
    Product.create! :name => 'Monkey', :price => 1.00
    visit products_path

    within '.list' do
      expect(page).to have_content('Monkey')
    end
  end

  pending 'authed user adds a product' do
    #user = create :user
    user = User.create! :email => "John@foo.com", :password => "12345678"
    sign_in user
    visit new_product_path
    fill_in "Name", :with => "Banana"
    click_button "Submit"
  end
end
