class AddGenreIdToWrites < ActiveRecord::Migration[5.1]
  def change
    add_column :writes, :genre_id, :integer
  end
end
