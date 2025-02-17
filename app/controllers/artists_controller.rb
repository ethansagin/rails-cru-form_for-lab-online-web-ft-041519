class ArtistsController < ApplicationController
    def new
    end

    def create
        @artist = Artist.create(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def show
        @artist = Artist.find_by(params[:id])
    end

    def edit
        @artist = Artist.find_by(params[:id])
    end

    def update
        @artist = Artist.find_by(params[:id])
        @artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end
end
