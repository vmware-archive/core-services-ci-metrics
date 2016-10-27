class AddExtraBuildInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :failures, :build_id, :string
    add_column :failures, :build, :string
    add_column :failures, :url, :string
  end
end
