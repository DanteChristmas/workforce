class CreateWorkforceAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :workforce_assignments do |t|
      t.belongs_to :assignee, polymorphic: true, null: false, index: true
      t.belongs_to :workforce_shift, null: false, foreign_key: true

      t.timestamps
    end
  end
end
