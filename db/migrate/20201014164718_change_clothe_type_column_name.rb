class ChangeClotheTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :clothes, :type, :clothe_type
  end
end
