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
      t.integer :country
      t.string :phone
      t.string :fax
      t.string :email
      t.string :website
      t.integer :region
      t.integer :sheets

      t.timestamps
    end
    add_index :clubs, :country
    add_index :clubs, :region
  end
end
