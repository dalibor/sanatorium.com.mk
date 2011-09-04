class ReleasesController < ApplicationController

  def index
    @releases = Release.order('year DESC')
  end

  def show
    @release = Release.find(params[:id])
    @songs   = @release.songs.order('position ASC')
  end
end
