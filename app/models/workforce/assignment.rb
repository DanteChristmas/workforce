module Workforce
  class Assignment < ApplicationRecord
    belongs_to :assignee, polymorphic: true
    belongs_to :workforce_shift, class_name: 'Workforce::Shift'
  end
end
