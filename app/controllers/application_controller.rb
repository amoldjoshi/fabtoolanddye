class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  # Amol added following line to handle access denied exception
  rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
      format.html { redirect_to main_app.root_path, alert: exception.message }
      format.json { render json: { error: exception.message }, status: :forbidden }
    end
  end
  # Changes to the importmap will invalidate the etag for HTML responses
  stale_when_importmap_changes
end
