class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Done only if storing files on disk - sets the current host and protocol that Active Storage uses for generating URLs
  include ActiveStorage::SetCurrent
end
