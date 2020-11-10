module Workforce
  class Shift < ApplicationRecord
    belongs_to :job, polymorphic: true
    has_many :workforce_assignments, class_name: 'Workforce::Assignment', foreign_key: 'workforce_shift_id'

    validates :start_time, :end_time, :quantity, presence: true
    validates :quantity, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
    validates_time :start_time, before:  :end_time

    def open_assignments?
      workforce_assignments.count < quantity
    end
  end
end
