class CreateStats < ActiveRecord::Migration[6.1]
  def change
    create_table :stats do |t|
      t.integer :character_id
      t.integer :VIT
      t.integer :STR
      t.integer :DEF

      t.timestamps
    end
  end
end
