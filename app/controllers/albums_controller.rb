class AlbumsController < ApplicationController
  before_action :set_album, only: [ :show, :edit, :update, :destroy ]

  def index
    @albums = Album.all
  end

  def show

  end

  def new
    @album = Album.new
  end

  def edit
  end

  def create
    @album = Album.create!(album_params)

    if @album.save
      redirect_to album_path
      # Need to work on album/show and change this path
    else
      render :new
    end
  end

  def update
    if @album.update(album_params)
      redirect_to album_path
      # Need to work on album/show and change this path

    else
      render :edit
    end
  end

  def destroy
    @album.destroy

    redirect_to root_path
  end


  private

    def set_album
      @album = Album.find(params[:id])
    end

    def album_params
      params.require(:album).permit(:title, :artist, :year, :genre, :desc, :price, :photo)
    end

end
