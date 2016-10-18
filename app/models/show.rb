class Show < ApplicationRecord
  has_many :beats, dependent: :destroy
  belongs_to :team
end
