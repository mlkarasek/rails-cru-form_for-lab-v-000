class SongsController < ApplicationController

  def index
    @songs = song.all
  end

  def show
    @song = Song.find(params[:id])
    @artist = Artist.find(params[:id])
    @genre = Genre.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(song_params(:name, :song_id, :genre_id))
    redirect_to song_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(post_params(:name, :bio))
    redirect_to song_path(@song)
  end
end
