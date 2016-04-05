require 'net/http'
require 'net/https'

module ImgurClient
	class << self

	def initialize
		puts "Let's get some pics"

  		headers    = {
    		"Authorization" => "Client-ID #{ENV['Imgur_client']}"
  		}

		#http       = Net::HTTP.new("https://api.imgur.com")
		path       = "/3/gallery/image/7x98w9T.json"
		uri = URI.parse("https://api.imgur.com"+path)
		request, data = Net::HTTP::Get.new(path, headers)
		http = Net::HTTP.new(uri.host, uri.port)
		http.use_ssl = true
		response = http.request(request)
		puts response.body
	end
end