class Course < ActiveRecord::Base
	has_many :sections
  validates :name, length: {minimum: 3, maximum: 20}, presence: true
  validates :description, length: {maximum: 500}, presence: true
  validates :creditHours, numericality: {greater_than: 0, less_than: 17}
  validates :level, presence: true
end
