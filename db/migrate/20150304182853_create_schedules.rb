class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.integer :start_at
      t.integer :ends_at
      t.references :venue, index: true

      t.timestamps
    end
  end
end
