class AddCategoryToFailures < ActiveRecord::Migration[5.0]
  def change
    add_column :failures, :category, :string
  end
end
