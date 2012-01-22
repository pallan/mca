class Region < ActiveRecord::Base
  
  # ================
  # = Vallidations =
  # ================
  validates :name, :presence => true
end
