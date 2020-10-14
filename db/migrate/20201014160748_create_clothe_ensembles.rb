class CreateClotheEnsembles < ActiveRecord::Migration[6.0]
  def change
    create_table :clothe_ensembles do |t|
      t.references :clothe, null: false, foreign_key: true
      t.references :ensemble, null: false, foreign_key: true

      t.timestamps
    end
  end
end
