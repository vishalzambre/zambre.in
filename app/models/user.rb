class User < ApplicationRecord
  include Clearance::User

  def admin?
    email && ENV['ADMIN_EMAILS'].to_s.include?(email)
  end
end
