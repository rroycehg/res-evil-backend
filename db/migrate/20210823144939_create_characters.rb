class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :affiliation
      t.string :bio
      t.string :img
      t.integer :VIT
      t.integer :STR
      t.integer :DEF

      t.timestamps
    end
  end
end
