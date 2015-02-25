class ProductReview < ActiveRecord::Base

  belongs_to :users
  belongs_to :productss

end
