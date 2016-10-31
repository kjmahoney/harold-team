class Note < ApplicationRecord
  # NHO: since you want to reuse this model in different contexts, I would recommend
  # looking into polymorphic relationships to provide a more consistent / helpful
  # interface to relating any model that you want to add notes to...
  
  belongs_to :beat
  belongs_to :user
  # NHO: missing belongs_to :show ?
end
