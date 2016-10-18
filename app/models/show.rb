class Show < ApplicationRecord
  has_many :beats, dependent: :destroy
end
