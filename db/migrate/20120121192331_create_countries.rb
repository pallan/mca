class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries, :primary_key => 'numcode' do |t|
      t.string :iso
      t.string :name
      t.string :printable_name
      t.string :iso3
      t.integer :designation_id
      t.integer :zone
    end
  end
end
