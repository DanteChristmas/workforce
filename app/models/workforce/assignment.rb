module Workforce
  class Assignment < ApplicationRecord
    belongs_to :assignee, polymorphic: true
    belongs_to :workforce_shift, as: :shift
  end
end
