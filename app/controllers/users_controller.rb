class UsersController < ApplicationController
before_action :set_values ,only: [:show, :edit, :update, :destroy]

	def index
		# if false
			@users = User.all
		# else
		# 	head :no_content
		# end
	end

	def show
	end

	def new
	 @user = User.new
	 @user.books.build
	end

	def create
		@user = User.new(set_params)
		if @user.save
			# redirect_to @user
		else
			render :new
		end
	end


	def edit
	end

	def update
 		if @user.update(set_params)
 			redirect_to @user
 		else
 			render :edit
 		end
	end

	def destroy
		@user.destroy
	end

	def sign_in
	end

	private

	def set_params
		params.require(:user).permit(:name, :age, :email, :password, :city, :image, books_attributes: [:name])
	end

	def set_values
		@user = User.find_by(id:params[:id])
	end
end
