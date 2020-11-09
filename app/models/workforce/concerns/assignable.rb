module Workforce
  module Assignable
    extend ActiveSupport::Concern

    included do
      has_many :workforce_assignments, as: :assignments, dependent: :restrict_with_exception
      has_many :workforce_shifts, as: :shifts, through: :assignments
      has_many :jobs, through: :shifts
    end
  end
end
