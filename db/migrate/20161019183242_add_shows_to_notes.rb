class AddShowsToNotes < ActiveRecord::Migration[5.0]
  def change
    add_reference :notes, :show, foreign_key: true
  end
end
