module Workforce
  module Shiftable
    extend ActiveSupport::Concern

    included do
      has_many :workforce_shifts, as: :shifts, dependent: :restrict_with_exception
      has_many :workforce_assignments, as: :assignments, through: :shifts
    end
  end
end
