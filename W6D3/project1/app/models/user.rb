class User < ApplicationRecord
    validates :username, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork

    has_many :viewed,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare

    has_many :shared_artworks,
        through: :viewed,
        source: :artwork
end