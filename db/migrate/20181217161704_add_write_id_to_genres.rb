class AddWriteIdToGenres < ActiveRecord::Migration[5.1]
  def change
    add_column :genres, :write_id, :integer
  end
end
