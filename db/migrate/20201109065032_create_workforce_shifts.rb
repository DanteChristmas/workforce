class CreateWorkforceShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :workforce_shifts do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end
