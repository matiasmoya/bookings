class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.references :venue, index: true

      t.timestamps
    end
  end
end
