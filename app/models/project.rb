class Project < ActiveRecord::Base
  belongs_to :airport
  has_many :scenarios
  validates :name, :client, presence: true
end
