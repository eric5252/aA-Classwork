class Artwork < ApplicationRecord
    validates :title, :img_url, :artist_id, presence: true
    validates_uniqueness_of :title, scope: :artist_id 
    
    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User

    has_many :shared_by,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare
end