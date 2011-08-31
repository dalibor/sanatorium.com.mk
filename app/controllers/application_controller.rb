class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_language

  private

    def set_language
      if params[:lang] && session[:lang] != params[:lang]
        session[:lang] = params[:lang]
      elsif session[:lang].blank?
        session[:lang] = I18n.locale
      end
      I18n.locale = session[:lang]
    end
end
