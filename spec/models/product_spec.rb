require 'rails_helper'

describe Product do

  let(:product) {
    Product.create!(name: "Product1", description: "something like this", image_url: "bike.jpg")
    }

  let(:user) { User.create!(email: "sbmusicfreak15@msn.com", password: "text123") }
  before do
    product.comments.create!(rating: 1, user: user, body: "Awful bike!")
    product.comments.create!(rating: 3, user: user, body: "Ok bike!")
    product.comments.create!(rating: 5, user: user, body: "Great bike!")
  end

  it "returns the average rating of all comments" do
    expect(product.average_rating).to eq 3
  end

  it "is not valid without a name" do
   expect(Product.new(description: "Cool painting")).not_to be_valid
 end

end
