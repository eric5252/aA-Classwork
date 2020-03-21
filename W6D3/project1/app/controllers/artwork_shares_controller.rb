class ArtworkSharesController < ApplicationController
     def create
            share = ArtworkShare.new(params.require(:artwork_share).permit(:artwork_id, :viewer_id))

        if share.save
          render json: share, status: :created
        else
         render json: share.errors.full_messages, status: 422
    end
    end

    def show
        artwork = Artwork.find(params[:id])
        render json: artwork
    end
end
