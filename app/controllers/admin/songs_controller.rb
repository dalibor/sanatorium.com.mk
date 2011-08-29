class Admin::SongsController < Admin::ApplicationController

  inherit_resources
  nested_belongs_to :release

  before_filter :load_song, :only => [:move_lower, :move_higher]

  def index
    @release = Release.find(params[:release_id])
    @songs = @release.songs.order('position ASC').
      paginate(:page => params[:page], :per_page => 10)
  end

  def move_lower
    @song.move_lower
    flash[:notice] = 'Song was successfully moved lower.'
    redirect_to admin_release_songs_url(@release)
  end

  def move_higher
    @song.move_higher
    flash[:notice] = 'Song was successfully moved higher.'
    redirect_to admin_release_songs_url(@release)
  end

  private

    def load_song
      @release = Release.find(params[:release_id])
      @song = @release.songs.find(params[:id])
    end
end
