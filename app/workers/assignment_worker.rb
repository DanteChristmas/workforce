module Workforce
  class AssignmentWorker
    include Sidekiq::Worker

    def perform(assignee_id, assignee_type, shift_id)
      shift = Workforce::Shift.find(shift_id)
      assigment = Workforce::Assignment.new({assignee_id: assignee_id, assignee_type: assignee_type, workforce_shift: shift})
      shift.save
      #TODO: We need some sort of mechanism for notify the user.
      #This could just be a seperate subscription the frontend already made,
      #or a notification service or something.
      #We could even have perform take and &block for some sort of callback
    end
  end
end
