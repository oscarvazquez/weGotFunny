class PhotosController < ApplicationController

	def index
  		@images = ImgurClient.get_funny()
  		puts 'this is imagesalkdjflkadf alsdf asl flka fldsk dfl'
  		puts @images
	end

end