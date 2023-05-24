class ApplicationController < ActionController::API
  attr_reader :current_user

    def is_user_expired?(user_obj = nil)
      user = user_obj || current_user
      user.expired_at < DateTime.now rescue true
    end

    def check_access_token
      u = User.find_by_access_token request.authorization.gsub('Bearer ','')
      is_present = u.access_token.present? rescue false
      return if !is_user_expired?(u) || is_present
      head :unauthorized
    end
end
