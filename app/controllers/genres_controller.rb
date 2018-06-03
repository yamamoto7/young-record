class GenresController < ApplicationController

	def create
		genre = Genre.new(genre_param)
		genre.save
		# redirect_to genre一覧
	end

	def index
		@genre = Genre.new
		@genres = Genre.all
	end

	def show
		@genre = Genre.find(params[:id])
		@items = @genre.items
	end

	def update
		genre = Genre.find(params[:id])
		genre.update(genre_params)
		# redirect_to genre詳細
	end

	private
	def genre_params
		params.require(:genre).permit(:name)
	end

end
