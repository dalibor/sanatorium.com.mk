class DownloadsController < ApplicationController

  def index
    @downloads = Download.order('raw_type ASC, position ASC').
      group_by{|d| d.raw_type }
  end
end
