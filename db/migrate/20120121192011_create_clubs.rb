class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.string :street1
      t.string :street2
      t.string :street3
      t.string :city
      t.string :province
      t.string :postal_code
      t.integer :country_id
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.integer :region_id
      t.integer :sheets

      t.timestamps
    end
    add_index :clubs, :country_id
    add_index :clubs, :region_id
  end
end
