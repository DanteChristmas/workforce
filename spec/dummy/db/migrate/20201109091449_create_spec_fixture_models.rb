class CreateSpecFixtureModels < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.text :name

      t.timestamps
    end

    create_table :users do |t|
      t.text :name

      t.timestamps
    end
  end
end
