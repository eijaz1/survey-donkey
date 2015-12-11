class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :users, :ethnicity, :race_ethnicity
  end
end
