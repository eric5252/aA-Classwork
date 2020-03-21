class FixArtworkIndex2 < ActiveRecord::Migration[5.2]
  def change
    # remove_index "artworks", name: "index_artworks_on_artist_id"
    remove_index "artworks", name: "index_artworks_on_artist_id_and_title"
    add_index :artworks, [:artist_id, :title], unique: true
  end
end
