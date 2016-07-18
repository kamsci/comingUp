class Review < ActiveRecord::Base
  has_one :student
  has_one :user, through: :student

  accepts_nested_attributes_for :student

  validates :review_content,
    length: { maximum: 600 }
end
