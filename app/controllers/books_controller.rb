class BooksController < ApplicationController
before_action :set_values ,only: [:show, :edit, :update]
	
	def index 
		@books = Book.all
		# render inline: "<h1>name</h1>"
		# render plain: "ok"
		# render xml: @books
		# render xml: @books , location: book_url(@books)
		# render status: 500
		# render variants: [:mobile, :desktop]
	end

	def show
		# if @book.nil?
		# 	render action: "index"
		# end
		# @a = helpers.format_book(@book)
	end

	def new
	 @book = Book.new(set_params)
	end

	def create
		@book = Book.new(set_params) 
		if @book.save
			redirect_to @book
		else
			render :new
		end	
	end


	def edit
			# redirect_to action: :index
	end

	def update
 		if @book.update
 			redirect_to @book
 		else
 			render :edit
 		end
	end


	private

	def set_params
		params.permit(:name)
	end

	def set_values
		@book = Book.find_by(id:params[:id]) 
	end		
end
