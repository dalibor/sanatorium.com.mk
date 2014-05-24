class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_language

  def default_url_options
    { :lang => I18n.locale }
  end

  private

  def set_language
    if params[:lang].present? && I18n.available_locales.exclude?(params[:lang].to_sym)
      raise ActionController::RoutingError.new('Not Found')
    end

    I18n.locale = params[:lang] || session[:lang].presence || :mk
    session[:lang] = I18n.locale
  end
end
