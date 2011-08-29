class Admin::DownloadsController < Admin::ApplicationController

  inherit_resources

  def index
    @downloads = Download.paginate(:page => params[:page], :per_page => 10)
  end
end
