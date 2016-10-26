class CreateFailures < ActiveRecord::Migration[5.0]
  def change
    create_table :failures do |t|
      t.string :pipeline
      t.string :job
      t.string :task
      t.text :description

      t.timestamps
    end

    add_index :failures, :id
  end
end
