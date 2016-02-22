class Student < ActiveRecord::Base
	has_and_belongs_to_many :sections
  validates :name, :number, :email, presence: true
end
