class Scenario < ActiveRecord::Base
  belongs_to :project
  validates :name,
            :base_year,
            :dom_on_dom,
            :dom_on_int,
            :min_r2,
            :el_dom_developed,
            :el_short_developed,
            :el_medium_developed,
            :el_long_developed,
            :el_ultra_developed,
            :el_short_developing,
            :el_medium_developing,
            :el_long_developing,
            :el_ultra_developing,
            :sat_dom_developed,
            :sat_short_developed,
            :sat_medium_developed,
            :sat_long_developed,
            :sat_ultra_developed,
            :sat_short_developing,
            :sat_medium_developing,
            :sat_long_developing,
            :sat_ultra_developing,
            presence: true
  validates :base_year,
            :sat_dom_developed,
            :sat_short_developed,
            :sat_medium_developed,
            :sat_long_developed,
            :sat_ultra_developed,
            :sat_short_developing,
            :sat_medium_developing,
            :sat_long_developing,
            :sat_ultra_developing,
            numericality: { greater_than_or_equal_to: YEAR_RANGE.end}
  validates :base_year, numericality: {less_than_or_equal_to: YEAR_RANGE.end}
  validates :dom_on_dom, :dom_on_int, numericality: {greater_than_or_equal_to: 0}
  validates :dom_on_dom, :dom_on_int, numericality: {less_than_or_equal_to: 100}
end
