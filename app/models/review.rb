class Review < ActiveRecord::Base
  belongs_to :student

  validates :review_content,
    length {in: 10..600}
end
