class Club < ActiveRecord::Base
  # ================
  # = Associations =
  # ================
  belongs_to :country
  belongs_to :region
  has_many :sheets

  # ===============
  # = Validations =
  # ===============
  validates :name, :presence => true
end
