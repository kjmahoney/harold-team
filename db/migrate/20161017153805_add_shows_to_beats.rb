class AddShowsToBeats < ActiveRecord::Migration[5.0]
  def change
    add_reference :beats, :show, foreign_key: true
  end
end
