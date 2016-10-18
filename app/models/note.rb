class Note < ApplicationRecord
  belongs_to :beat
  belongs_to :user
end
