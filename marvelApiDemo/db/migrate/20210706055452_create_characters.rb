class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.text :description
      t.integer :code
      t.string :thumbnail

      t.timestamps
    end
  end
end
