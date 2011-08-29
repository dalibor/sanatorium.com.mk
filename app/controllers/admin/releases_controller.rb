class Admin::ReleasesController < Admin::ApplicationController

  inherit_resources

  def index
    @releases = Release.paginate(:page => params[:page], :per_page => 10)
  end
end
