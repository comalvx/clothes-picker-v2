class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :type
      t.string :weather
      t.integer :temperature
      t.string :tag
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
