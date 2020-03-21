class FixArtworkIndex < ActiveRecord::Migration[5.2]
  def change
    # remove_index "artworks", name: "index_artworks_on_artist_id"
    add_index :artworks, [:artist_id, :title]
  end
end
