class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.references :owner, index: true

      t.timestamps
    end
  end
end
