class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :body
      t.boolean :private
      t.references :beat, foreign_key: true

      t.timestamps
    end
  end
end
