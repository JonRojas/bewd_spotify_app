class SpotifyController < ApplicationController

	def index
		if params[:year]
			year = params[:year]
			response = HTTParty.get("https://api.spotify.com//v1/browse/new-releases+year=#{year}")
			results = JSON.parse(response.body)
			@results = results['year']
		else
			@results = []
		end
	end

	def show

	end
end