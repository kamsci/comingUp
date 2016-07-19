class CohortsStudents < ActiveRecord::Base
  belongs_to :cohort
  belongs_to :student
  has_one :user, through: :student
  has_many :deliverables, through: :cohort
end
