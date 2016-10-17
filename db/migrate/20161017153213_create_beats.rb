class CreateBeats < ActiveRecord::Migration[5.0]
  def change
    create_table :beats do |t|
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end
