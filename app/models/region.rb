class Region < ActiveRecord::Base
  # ================
  # = Associations =
  # ================
  has_many :clubs
  
  # ================
  # = Vallidations =
  # ================
  validates :name, :presence => true
end
