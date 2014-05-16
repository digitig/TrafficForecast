class Airport < ActiveRecord::Base
  belongs_to :country
  has_many :projects
  validates :code, :name, :city, presence: true
  validates :code, uniqueness: true
  validates :latitude, :longitude, numericality: {greater_than_or_equal_to: -180}
  validates :latitude, :longitude, numericality: {less_than_or_equal_to: 180}
  # TODO speed up index search of countries
end
