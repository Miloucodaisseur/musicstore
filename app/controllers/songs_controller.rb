class SongsController < ApplicationController
  def index
    @songs = Song.all
  end
    def show
      @song = Song.find(params[:id])
    end

  def new
     @artist = Artist.all
     @song = Song.new
     @song.save
end

  def create
     @song = Song.new( song_params )

     if @song.save
        redirect_to @song
     else
        render 'new'
     end
  end

  def edit
     @artist = Artist.all
     @song = Song.find( params[:id] )
  end

  def update
     @song = Song.find( params[:id] )

     if @song.update_attributes( song_params )
        redirect_to @song
     else
        render 'edit'
     end
  end

  def destroy
     @song = Song.find( params[:id] )

     @song.destroy

     redirect_to songs_path
  end

private

  def song_params
     params.require( :song ).permit( :title, :genre, :duration, :avatar, :artist_id)
  end
end
