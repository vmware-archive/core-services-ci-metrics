class RemoveUrlFromFailures < ActiveRecord::Migration[5.0]
  def change
    remove_column :failures, :url
  end
end
