class Review < ActiveRecord::Base
  belongs_to :student
  belongs_to :user, through :student

  validates :review_content,
    length: { maximum: 600 }
end
