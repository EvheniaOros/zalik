class CreateWrites < ActiveRecord::Migration[5.1]
  def change
    create_table :writes do |t|
      t.integer :user_id
      t.string :title
      t.string :firstheroy
      t.string :secondheroy
      t.string :aboutstory
      t.string :body

      t.timestamps
    end
  end
end
