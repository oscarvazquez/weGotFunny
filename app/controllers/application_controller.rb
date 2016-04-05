class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  respond_to :json

  # def index
  # 	puts '\t\t\t\t\t\t\t\n\n\n'
  # 	ImgurClient.get_funny()
  # 	puts '\t\t\t\t\t\t\t\n\n\n'
  # 	ImgurClient.get_img '7x98w9T'
  # end

end
