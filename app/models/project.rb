class Project < ActiveRecord::Base
  belongs_to :airport
  has_many :scenarios, dependent: :destroy
  validates :name, :client, presence: true
end
