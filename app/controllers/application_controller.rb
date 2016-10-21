class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authorize_user
  	token = request.headers['Authorization']
  	user = User.find_by_token(token)

  	if user.nil?
  		render json: {errors: 'Unauthorized Access'},
  		status: :unauthorized
  end 
end
end
