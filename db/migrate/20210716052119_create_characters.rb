class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :sex_id, null: false
      t.integer :height, null: false
      t.integer :weight, null: false

      t.timestamps
    end
  end
end
