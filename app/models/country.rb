class Country < ActiveRecord::Base
  has_many :airports, dependent: :destroy
  has_many :regions, dependent: :destroy
end
