class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :teams, through: :memberships

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
