class Review < ActiveRecord::Base
  belongs_to :student

  validates :reviewContent,
    length: { maximum: 600 }
end
