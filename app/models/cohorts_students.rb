class CohortsStudents < ActiveRecord::Base
  belongs_to :cohort
  belongs_to :student
  has_one :user, through: :student
end
