class CreateTask2s < ActiveRecord::Migration[6.0]
  def change
    create_table :task2s do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
