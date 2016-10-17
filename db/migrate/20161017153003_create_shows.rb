class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
      t.text :title
      t.datetime :date
      t.integer :length
      t.text :body

      t.timestamps
    end
  end
end
