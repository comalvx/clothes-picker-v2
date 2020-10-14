class CreateEnsembles < ActiveRecord::Migration[6.0]
  def change
    create_table :ensembles do |t|
      t.string :weather
      t.integer :temperature
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
