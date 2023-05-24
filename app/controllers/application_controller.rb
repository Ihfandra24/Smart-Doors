class ApplicationController < ActionController::API
  attr_reader :current_user

    def is_user_expired?(user_obj = nil)
      user = user_obj || current_user
      user.expired_at < DateTime.now
    end

    def check_access_token
      u = User.find_by_access_token request.authorization.gsub('Bearer ','')
      return if !is_user_expired?(u) || u.access_token.present?
      head :unauthorized
    end
end
