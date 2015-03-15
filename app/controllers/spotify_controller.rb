class SpotifyController < ApplicationController

	def index
		if params[:year]
			year = params[:year]
			response = HTTParty.get("https://api.spotify.com/v1/search?type=playlist&q=#{year}")
			results = JSON.parse(response.body)
			
			playlists = results['playlists']['items'] #array of the playlists
			playlists.each do |playlist|

			end
			# @results = results['playlists']
		else
			@results = []
		end
		
	end





	def show
		response = HTTParty.get("https://api.spotify.com/v1/search?type=playlist&q=#{params[:year]}")
		@result = JSON.parse(response.body)
	end
end



