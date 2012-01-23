class Sheet < ActiveRecord::Base
  
  # ================
  # = Associations =
  # ================
  belongs_to :club
  
  # ===============
  # = Validations =
  # =============== 
  validates :number, :numericality => { :only_integer => true, :greater_than => 0 }
end
