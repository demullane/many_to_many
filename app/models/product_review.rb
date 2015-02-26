class ProductReview < ActiveRecord::Base

  belongs_to :users
  belongs_to :productss

  validates :title, :description, :product_id, :user_id, :rating, presence: true

end
