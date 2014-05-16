class Country < ActiveRecord::Base
  has_many :airports, dependent: :destroy
  has_many :regions, dependent: :destroy
  validates :alpha3, :iso_name, presence: true
  validates :alpha3, uniqueness: true
end
