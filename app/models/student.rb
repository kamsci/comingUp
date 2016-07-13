class Student < ActiveRecord::Base
  belongs_to :user

  has_secure_password

  validates :brand,
    length {in: 10..600}

  validates :linkedin,
    :url => true

  validates :resume,
    :url => true

  validates :jobtracker,
    :url => true

  validates :portfolio,
    :url => true

end
