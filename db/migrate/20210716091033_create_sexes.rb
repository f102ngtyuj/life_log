class CreateSexes < ActiveRecord::Migration[6.0]
  def change
    create_table :sexes do |t|

      t.timestamps
    end
  end
end
