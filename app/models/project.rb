class Project < ActiveRecord::Base
  belongs_to :airport
  has_many :scenarios
end
