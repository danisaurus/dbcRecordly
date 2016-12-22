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
        @song = Song.find(params[:id])
 
        if @song.update(song_params)
            redirect_to '/songs'
        else
            render 'edit'
        end
    end

    def edit
        @song = Song.find(params[:id]);
    end


    def destroy
    end


private
    def song_params
        params.require(:song).permit(:title, :album, :artist)
    end

end