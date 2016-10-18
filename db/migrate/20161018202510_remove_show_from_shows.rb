class RemoveShowFromShows < ActiveRecord::Migration[5.0]
  def change
    remove_reference :shows, :show, foreign_key: true
  end
end
