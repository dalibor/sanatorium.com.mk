class Admin::DownloadsController < Admin::ApplicationController

  inherit_resources

  before_filter :load_download, :only => [:move_lower, :move_higher]

  def index
    @downloads = Download.order('raw_type ASC, position ASC')
  end

  def move_lower
    @download.move_lower
    flash[:notice] = 'Download was successfully moved lower.'
    redirect_to admin_downloads_url(@download)
  end

  def move_higher
    @download.move_higher
    flash[:notice] = 'Download was successfully moved higher.'
    redirect_to admin_downloads_url(@download)
  end

  private

    def load_download
      @download = Download.find(params[:id])
    end
end
