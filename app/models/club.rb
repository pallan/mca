class Club < ActiveRecord::Base
  # ================
  # = Associations =
  # ================
  belongs_to :country
  belongs_to :region

  # ===============
  # = Validations =
  # ===============
  validates :name, :presence => true
  validates :sheets, :numericality => { :only_integer => true, :greater_than => 0 }
end
