module Workforce
  class Shift < ApplicationRecord
    belongs_to :job, polymorphic: true
    has_many :workforce_assignments, as: :assignments
    has_many :assignees, through: :assignments

    validates :start_time, :end_time, :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates_time :start_time, before:  :end_time
  end
end
