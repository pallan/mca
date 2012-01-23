class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.integer :number
      t.integer :club_id

      t.timestamps
    end
    add_index :sheets, :club_id
  end
end
