class Deliverable < ActiveRecord::Base
  belongs_to :cohort, inverse_of: :deliverables
  accepts_nested_attributes_for :cohort
end
