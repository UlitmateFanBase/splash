class Conference < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :teams
end
