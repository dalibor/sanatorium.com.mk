class PagesController < ApplicationController

  def show
    @page = Page.find_by_key(params[:id])
  end
end
