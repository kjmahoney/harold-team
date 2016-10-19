class User < ApplicationRecord
  has_many :notes
  has_many :memberships
  has_many :teams, through: :memberships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
