class Team < ActiveRecord::Base
  belongs_to :conference
  has_many :users
  validates :name, presence: true, uniqueness: true
end
