require 'csv'

CSV.foreach(Rails.root + "db/seeds/countries.csv", :headers => true) do |row|
  c = Country.new(row.to_hash.except('numcode'))
  c.numcode = row['numcode']
  c.save!
end