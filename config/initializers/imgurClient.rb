require 'net/http'
require 'net/https'
require 'json'

class ImgurClient

		def self.get_funny
	  		headers    = {
	    		"Authorization" => "Client-ID #{ENV['Imgur_client']}"
	  		}

			path = "/3/gallery/t/funny.json"
			uri = URI.parse("https://api.imgur.com"+path)
			request, data = Net::HTTP::Get.new(path, headers)
			http = Net::HTTP.new(uri.host, uri.port)
			http.use_ssl = true
			response = http.request(request)
			JSON.parse(response.body)
		end
		
		def self.get_img imgId
	  		headers    = {
	    		"Authorization" => "Client-ID #{ENV['Imgur_client']}"
	  		}

			path = "/3/gallery/t/funny/#{imgId}.json"
			uri = URI.parse("https://api.imgur.com"+path)
			request, data = Net::HTTP::Get.new(path, headers)
			http = Net::HTTP.new(uri.host, uri.port)
			http.use_ssl = true
			response = http.request(request)
			puts response.body
		end
end