class Staffpick < ActiveRecord::Base

  validates :name,
    presence: true,
    length: {in: 1..30}

  validates :url,
    presence: true,
    url: true,
    uniqueness: {case_sensitive: false}

end
