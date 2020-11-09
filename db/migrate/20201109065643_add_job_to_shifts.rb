class AddJobToShifts < ActiveRecord::Migration[6.0]
  def change
    add_reference :workforce_shifts, :job, polymorphic: true, null: false, index: true
  end
end
