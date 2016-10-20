class Team < ApplicationRecord
  has_many :shows, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships
end
