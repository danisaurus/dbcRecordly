class SongsController < ApplicationController
    before_filter :authorize
    
    def index
        @songs = Song.all
    end

    def show
        @song = Song.find(params[:id])
    end

    def create
       @song = Song.new(song_params)
       @song.save
       redirect_to "/songs" 
    end

    def update
    end

    def edit
    end


    def destroy
    end


private
    def song_params
        params.require(:song).permit(:title, :album, :artist)
    end

end