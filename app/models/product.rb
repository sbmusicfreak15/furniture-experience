class Product < ApplicationRecord
  has_many :orders
  has_many :comments

  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

  def highest_rating_comment
    comments.rating_desc.pluck(:rating).first
  end

  def lowest_rating_comment
    comments.rating_desc.pluck(:rating).last
  end

end
