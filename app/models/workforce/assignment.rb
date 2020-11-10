module Workforce
  class Assignment < ApplicationRecord
    belongs_to :assignee, polymorphic: true
    belongs_to :workforce_shift, class_name: 'Workforce::Shift'

    validate :open_assigments, on: :create

    private
      def open_assigments
        errors.add(:workforce_shift, "Shift is full") unless workforce_shift.open_assignments?
      end
  end
end
