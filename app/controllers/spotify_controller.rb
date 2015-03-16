class SpotifyController < ApplicationController

	def index
		if params[:year]
			year = params[:year]
			response = HTTParty.get("https://api.spotify.com/v1/search?type=playlist&q=#{year}")
			results = JSON.parse(response.body)
			@playlists = results['playlists'] ['items'] #array of the playlists
		else
			@playlists = []
		end
	end
		

	def show
		# need playlists IDs
		year = params[:year]
		response = HTTParty.get("https://api.spotify.com/v1/search?type=playlist&q=#{year}")
		@result = JSON.parse(response.body)
		binding.pry
	end
end



