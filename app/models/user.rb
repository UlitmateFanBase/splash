class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  belongs_to :team
end
