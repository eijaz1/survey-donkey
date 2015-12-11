class UpdateAnswers < ActiveRecord::Migration
  def change
    add_column :users, :answer7, :string
  end
end
