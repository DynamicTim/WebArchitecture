class Professor < ActiveRecord::Base
	has_many :sections
  validates :name, presence: true
  validates :number, presence: true
  validates :email, presence: true
end
