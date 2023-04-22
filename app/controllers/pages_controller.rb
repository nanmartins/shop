class PagesController < ApplicationController
  def home
    @testAlbum = Album.all
  end
end
