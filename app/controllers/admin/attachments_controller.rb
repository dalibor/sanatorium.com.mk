class Admin::AttachmentsController < Admin::ApplicationController

  inherit_resources

  def index
    @attachments = Attachment.paginate(:page => params[:page], :per_page => 10)
  end
end
