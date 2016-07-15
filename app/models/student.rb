class Student < ActiveRecord::Base
  belongs_to :user
  has_many :reviews

  validates :brand,
    allow_nil: true,
    length: {in: 10..600}

  validates :linkedin,
    allow_nil: true,
    :url => true

  validates :resume,
    allow_nil: true,
    :url => true

  validates :jobtracker,
    allow_nil: true,
    :url => true

  validates :portfolio,
    allow_nil: true,
    :url => true

end
