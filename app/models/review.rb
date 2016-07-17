class Review < ActiveRecord::Base
  belongs_to :student

  validates :review_content,
    length: { maximum: 600 }
end
