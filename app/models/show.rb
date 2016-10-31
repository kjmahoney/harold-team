class Show < ApplicationRecord
  # NHO: missing has_many :notes?
  has_many :beats, dependent: :destroy
  belongs_to :team
end
