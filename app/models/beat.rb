class Beat < ApplicationRecord
  belongs_to :show
  has_many :notes
  # , dependent: :destroy
end
