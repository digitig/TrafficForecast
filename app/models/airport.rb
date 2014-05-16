class Airport < ActiveRecord::Base
  belongs_to :country
  # TODO speed up index search of countries
end
