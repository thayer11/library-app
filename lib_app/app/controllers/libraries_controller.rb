class LibrariesController < ApplicationController

	def index
		@libraries = Library.all

		render :index
	end

	def new
		@library = Library.new

		render :new
	end

	def create
		library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
		@library = Library.create(library_params)

		redirect_to "/libraries"
	end

	def show
		@library = Library.find(params[:id])
		render :show
	end

	def edit 
		@library = Library.find(params[:id])
		render :edit 
	end

	def update
		@library = Library.find(params[:id])
		library_params = params.require(:library).permit(:name, :floor_count, :floor_area)
		library.update_attributes(library_params)
		redirect_to "/libraries/#{@library.id}"
	end

	def destroy
		@library = Library.find(parmas[:id])
		library.destroy
		redirect_to "/libraries"
	end
end