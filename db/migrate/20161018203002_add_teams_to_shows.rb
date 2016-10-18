class AddTeamsToShows < ActiveRecord::Migration[5.0]
  def change
    add_reference :shows, :team, foreign_key: true
  end
end
