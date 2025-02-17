class GenresController < ApplicationController
    def new
    end

    def create
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find_by(params[:id])
    end

    def edit
        @genre = Genre.find_by(params[:id])
    end

    def update
        @genre = Genre.find_by(params[:id])
        @genre.update(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre) 
    end
end
