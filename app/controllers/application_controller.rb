class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery except: :open_webhook

  protected

  def no_view
    render nothing: true, head: :ok
  end
end
