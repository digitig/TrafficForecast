class Region < ActiveRecord::Base
  belongs_to :country
  validates :region_code, :name, presence: true
  validates :region_code, uniqueness: {scope: :country, message: 'must be unique within a country'}
end
