class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.datetime :start_time
      t.integer :step

      t.timestamps
    end
  end
end
