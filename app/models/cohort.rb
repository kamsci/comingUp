class Cohort < ActiveRecord::Base
  has_and_belongs_to_many :students

  validates :cohort,
    uniqueness: {case_sensitive: false}
    
end
