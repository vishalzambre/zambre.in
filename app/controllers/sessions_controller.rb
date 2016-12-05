
class SessionsControler < ApplicationController
  protected

  def url_after_create
    if current_user.admin?
      redirect_to admin_dashboard_url
    end
  end
end
