class ArtworksController < ApplicationController
    def index
        render plain: "I'm in the index action!"
        # debugger
    end

    def create
        artwork = Artwork.new(params.require(:artwork).permit(:title, :img_url, :artist_id))

        if artwork.save
            render json: artwork
        else
            render json: artwork.errors.full_messages, status: 422
        end
    end

    def show
        artwork = Artwork.find(params[:artist_id])
        render json: artwork
    end
end